" Vim syntax file
" Language: C libglade extension (for version 2.6.4)
" Maintainer: David Nečas (Yeti) <yeti@physics.muni.cz>
" Last Change: 2011-03-14
" URL: http://physics.muni.cz/~yeti/vim/gtk-syntax.tar.gz
" Generated By: vim-syn-gen.py
" Options:
"    Deprecated declarations are not highlighted by default.
"    let libglade_enable_deprecated = 1
"       highlights deprecated declarations too (like normal declarations)
"    let libglade_deprecated_errors = 1
"       highlights deprecated declarations as Errors

syn keyword libgladeFunction glade_enum_from_string glade_flags_from_string glade_get_widget_name glade_get_widget_tree glade_init glade_interface_destroy glade_interface_dump glade_module_check_version glade_parser_parse_buffer glade_parser_parse_file glade_provide glade_register_custom_prop glade_register_widget glade_require glade_set_custom_handler glade_standard_build_children glade_standard_build_widget glade_xml_build_widget glade_xml_construct glade_xml_construct_from_buffer glade_xml_ensure_accel glade_xml_get_type glade_xml_get_widget glade_xml_get_widget_prefix glade_xml_handle_internal_child glade_xml_handle_widget_prop glade_xml_new glade_xml_new_from_buffer glade_xml_relative_file glade_xml_set_common_params glade_xml_set_packing_property glade_xml_set_toplevel glade_xml_set_value_from_string glade_xml_signal_autoconnect glade_xml_signal_autoconnect_full glade_xml_signal_connect glade_xml_signal_connect_data glade_xml_signal_connect_full
syn keyword libgladeStruct GladeAccelInfo GladeAtkActionInfo GladeAtkRelationInfo GladeChildInfo GladeInterface GladeProperty GladeSignalInfo GladeWidgetInfo GladeXML GladeXMLClass GladeXMLPrivate
syn keyword libgladeMacro GLADE_IS_XML GLADE_IS_XML_CLASS GLADE_XML GLADE_XML_CLASS GLADE_XML_GET_CLASS
syn keyword libgladeUserFunction GladeApplyCustomPropFunc GladeBuildChildrenFunc GladeFindInternalChildFunc GladeNewFunc GladeXMLConnectFunc GladeXMLCustomWidgetHandler
syn keyword libgladeDefine GLADE_MODULE_API_VERSION GLADE_MODULE_CHECK_INIT GLADE_TYPE_XML
syn keyword libgladeDeprecatedMacro glade_bonobo_init glade_gnome_init glade_xml_new_from_memory glade_xml_new_with_domain

" Default highlighting
if version >= 508 || !exists("did_libglade_syntax_inits")
  if version < 508
    let did_libglade_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink libgladeFunction Function
  HiLink libgladeMacro Macro
  HiLink libgladeDefine Constant
  HiLink libgladeStruct Type
  HiLink libgladeUserFunction Type
  if exists("libglade_deprecated_errors")
    HiLink libgladeDeprecatedMacro Error
  elseif exists("libglade_enable_deprecated")
    HiLink libgladeDeprecatedMacro Macro
  endif

  delcommand HiLink
endif

