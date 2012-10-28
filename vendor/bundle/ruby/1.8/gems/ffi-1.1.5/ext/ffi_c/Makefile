
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /usr/local/rvm/rubies/ruby-1.8.7-p370/lib/ruby/1.8/i686-darwin12.2.0
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/usr/local/rvm/rubies/ruby-1.8.7-p370
exec_prefix = $(prefix)
vendorarchdir = $(vendorlibdir)/$(sitearch)
bindir = $(exec_prefix)/bin
localedir = $(datarootdir)/locale
dvidir = $(docdir)
infodir = $(datarootdir)/info
sitearchdir = $(sitelibdir)/$(sitearch)
pdfdir = $(docdir)
oldincludedir = $(DESTDIR)/usr/include
libexecdir = $(exec_prefix)/libexec
includedir = $(prefix)/include
localstatedir = $(prefix)/var
sitedir = $(libdir)/ruby/site_ruby
mandir = $(datarootdir)/man
htmldir = $(docdir)
sysconfdir = $(prefix)/etc
docdir = $(datarootdir)/doc/$(PACKAGE)
sbindir = $(exec_prefix)/sbin
datadir = $(datarootdir)
psdir = $(docdir)
vendordir = $(libdir)/ruby/vendor_ruby
sitelibdir = $(sitedir)/$(ruby_version)
archdir = $(rubylibdir)/$(arch)
rubylibdir = $(libdir)/ruby/$(ruby_version)
datarootdir = $(prefix)/share
libdir = $(exec_prefix)/lib
sharedstatedir = $(prefix)/com
vendorlibdir = $(vendordir)/$(ruby_version)

CC = /usr/bin/gcc-4.2
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = extconf.h
CFLAGS   =  -fno-common -I/opt/sm/pkg/active/include  -fno-common -pipe -fno-common $(cflags) 
INCFLAGS = -I. -I. -I/usr/local/rvm/rubies/ruby-1.8.7-p370/lib/ruby/1.8/i686-darwin12.2.0 -I. -I/usr/include/ffi
DEFS     = 
CPPFLAGS = -DRUBY_EXTCONF_H=\"$(RUBY_EXTCONF_H)\"  -D_XOPEN_SOURCE -D_DARWIN_C_SOURCE  
CXXFLAGS = $(CFLAGS) 
ldflags  = -L. -L/opt/sm/pkg/active/lib
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = cc -dynamic -bundle -undefined suppress -flat_namespace
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = i686-darwin12.2.0
sitearch = i686-darwin12.2.0
ruby_version = 1.8
ruby = /usr/local/rvm/rubies/ruby-1.8.7-p370/bin/ruby
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED) -lffi  -ldl -lobjc  
SRCS = AbstractMemory.c ArrayType.c Buffer.c Call.c ClosurePool.c DataConverter.c DynamicLibrary.c ffi.c Function.c FunctionInfo.c LastError.c LongDouble.c MappedType.c MemoryPointer.c MethodHandle.c Platform.c Pointer.c Struct.c StructByReference.c StructByValue.c StructLayout.c Thread.c Type.c Types.c Variadic.c
OBJS = AbstractMemory.o ArrayType.o Buffer.o Call.o ClosurePool.o DataConverter.o DynamicLibrary.o ffi.o Function.o FunctionInfo.o LastError.o LongDouble.o MappedType.o MemoryPointer.o MethodHandle.o Platform.o Pointer.o Struct.o StructByReference.o StructByValue.o StructLayout.o Thread.o Type.o Types.o Variadic.o
TARGET = ffi_c
DLLIB = $(TARGET).bundle
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /Users/scervera/Sites/MDN/vendor/bundle/ruby/1.8/gems/ffi-1.1.5/lib$(target_prefix)
RUBYARCHDIR = /Users/scervera/Sites/MDN/vendor/bundle/ruby/1.8/gems/ffi-1.1.5/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).bundle $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h $(RUBY_EXTCONF_H)
