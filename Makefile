# The following variables are described in config.mak.
# - AHK ... To Specify Ahk2Exe.exe that is compiler of AutoHotKey.
# - USER_PROFILE ... This variable means %USERPROFILE%.
include ./config.mak

TARGET_ARCHIVE=KeyAccel.exe
TRAGE_FILE=KeyAccel.ahk
INCLUDE_FILES=\
	../HomeAccel/HomeAccel.ahk \
	../SandC/SandC.ahk

INSTALL_DIR=$(USER_PROFILE)"/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup"

deault: show

all: $(TARGET_ARCHIVE)
	@echo Compiling...
	$(AHK) /in $(TRAGE_FILE) /out $(TARGET_ARCHIVE)

$(TARGET_ARCHIVE): $(TRAGE_FILE)
$(TRAGE_FILE): $(INCLUDE_FILES)

install: all
	cp -f ./$(TARGET_ARCHIVE) $(INSTALL_DIR)

run:
	./$(TARGET_ARCHIVE) &

clean:
	@echo target clean is not implemented.

show:
	@echo "Make Enviroment is as follows:"
	@echo "AutoHotKey compiler... " $(AHK)
	@echo "Install Directory ... " $(INSTALL_DIR)

