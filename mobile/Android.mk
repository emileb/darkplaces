LOCAL_PATH:= $(call my-dir)/../

include $(CLEAR_VARS)

LOCAL_MODULE := darkplaces_xonotic

LOCAL_DISABLE_FORMAT_STRING_CHECKS := true

LOCAL_CFLAGS := -DUSE_GLES2 -fsigned-char -DDARKPLACES -DLINK_TO_LIBJPEG -DCONFIG_MENU -DCONFIG_CD -DKTX_OPENGL_ES2 -DENGINE_NAME=\"darkplaces\" -DDP_FS_BASEDIR=\"./\" -DDP_FS_USERDIR=\"../user_files/darkplaces/\"
LOCAL_CPPFLAGS := -fpermissive

LOCAL_C_INCLUDES :=     $(SDL_INCLUDE_PATHS)  \
                        $(TOP_DIR) \
                        $(TOP_DIR)/MobileTouchControls \
                        $(TOP_DIR)/AudioLibs_OpenTouch/liboggvorbis/include \
                        $(TOP_DIR)/Clibs_OpenTouch \
                        $(TOP_DIR)/Clibs_OpenTouch/jpeg8d \
                        $(TOP_DIR)/Clibs_OpenTouch/quake \


LOCAL_SRC_FILES += \
  ../../Clibs_OpenTouch/quake/android_jni.cpp \
    ../../Clibs_OpenTouch/quake/touch_interface.cpp \
    ../../Clibs_OpenTouch/touch_interface_base.cpp \
    mobile/game_interface.c \
	bih.c \
	crypto.c \
	cd_shared.c \
	cl_cmd.c \
	cl_collision.c \
	cl_demo.c \
	cl_ents.c \
	cl_ents4.c \
	cl_ents5.c \
	cl_ents_nq.c \
	cl_ents_qw.c \
	cl_input.c \
	cl_main.c \
	cl_parse.c \
	cl_particles.c \
	cl_screen.c \
	cl_video.c \
	cl_video_libavw.c \
	clvm_cmds.c \
	cmd.c \
	collision.c \
	com_crc16.c \
	com_ents.c \
	com_ents4.c \
	com_game.c \
	com_msg.c \
	com_infostring.c \
	common.c \
	console.c \
	csprogs.c \
	curves.c \
	cvar.c \
	dpvsimpledecode.c \
	filematch.c \
	fractalnoise.c \
	fs.c \
	ft2.c \
	utf8lib.c \
	gl_backend.c \
	gl_draw.c \
	gl_rmain.c \
	gl_rsurf.c \
	gl_textures.c \
	hmac.c \
	host.c \
	image.c \
	image_png.c \
	jpeg.c \
	keys.c \
	lhnet.c \
	libcurl.c \
	mathlib.c \
	matrixlib.c \
	mdfour.c \
	meshqueue.c \
	mod_skeletal_animatevertices_sse.c \
	mod_skeletal_animatevertices_generic.c \
	model_alias.c \
	model_brush.c \
	model_shared.c \
	model_sprite.c \
	netconn.c \
	palette.c \
	polygon.c \
	portals.c \
	protocol.c \
	prvm_cmds.c \
	prvm_edict.c \
	prvm_exec.c \
	r_explosion.c \
	r_lightning.c \
	r_modules.c \
	r_shadow.c \
	r_sky.c \
	r_sprites.c \
	r_stats.c \
	sbar.c \
	sv_ccmds.c \
	sv_demo.c \
	sv_ents.c \
	sv_ents4.c \
	sv_ents5.c \
	sv_ents_csqc.c \
	sv_ents_nq.c \
	sv_main.c \
	sv_move.c \
	sv_phys.c \
	sv_save.c \
	sv_send.c \
	sv_user.c \
	svbsp.c \
	svvm_cmds.c \
	sys_shared.c \
	taskqueue.c \
	vid_shared.c \
	view.c \
	wad.c \
	world.c \
	zone.c \
	menu.c \
	mvm_cmds.c \
	snd_main.c snd_mem.c snd_mix.c snd_ogg.c snd_wav.c snd_sdl.c \
	builddate.c sys_sdl.c vid_sdl.c thread_sdl.c \


LOCAL_LDLIBS := -lGLESv2 -lEGL -ldl -llog -lOpenSLES -lz
LOCAL_STATIC_LIBRARIES := sigc libzip libpng ktx logwritter  freetype2-static libjpeg
LOCAL_SHARED_LIBRARIES := touchcontrols SDL2 SDL2_mixer core_shared saffal

include $(BUILD_SHARED_LIBRARY)



include 
