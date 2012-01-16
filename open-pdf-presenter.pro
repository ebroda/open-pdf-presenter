#    This file is part of open-pdf-presenter.
#
#    open-pdf-presenter is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    open-pdf-presenter is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with open-pdf-presenter.  If not, see <http://www.gnu.org/licenses/>.

TEMPLATE = app
TARGET = 
DEPENDPATH += . src ui src/events src/views
INCLUDEPATH += . src/events src/views
INCLUDEPATH += include
OBJECTS_DIR = build
MOC_DIR = $$OBJECTS_DIR
UI_DIR = $$OBJECTS_DIR
RCC_DIR = $$OBJECTS_DIR

CONFIG += qt debug
QT += xml xmlpatterns

# POPPLER
INCLUDEPATH += /usr/include/poppler/qt4
LIBS += -lpoppler-qt4


# Input
HEADERS += src/events/event.h \
           src/events/slide.h \
           src/events/timer.h \
           src/events/lifecycle.h \
           src/views/console.h \
           src/views/mainwindow.h \
           src/views/mainslide.h \
           src/views/view.h \
           src/views/viewutils.h \
           src/controllers.h \
           src/presenter.h \
    src/renderer.h \
    src/parser.h \
    src/views/startscreen.h
FORMS += \
    ui/controlbar.ui \
    ui/currentnextslide.ui \
    ui/frame.ui \
    ui/notes.ui \
    ui/start-screen.ui
SOURCES += src/main.cpp \
           src/events/event.cpp \
           src/events/slide.cpp \
           src/events/timer.cpp \
           src/events/lifecycle.cpp \
           src/views/console.cpp \
           src/views/mainwindow.cpp \
           src/views/mainslide.cpp \
           src/views/viewutils.cpp \
           src/controllers.cpp \
           src/presenter.cpp \
    src/renderer.cpp \
    src/parser.cpp \
    src/views/startscreen.cpp

RESOURCES += \
    resources/controlbar/controlbar.qrc \
    resources/presenterscreen/presenterscreen.qrc \
    resources/notes/notes.qrc

OTHER_FILES += \
    resources/notes/notes.xsd





