<!-- ...................................................................... -->
    <!-- DocBook XML information pool module V4.5 ............................. -->
    <!-- File dbpoolx.mod ..................................................... -->

    <!-- Copyright 1992-2004 HaL Computer Systems, Inc.,
         O'Reilly & Associates, Inc., ArborText, Inc., Fujitsu Software
         Corporation, Norman Walsh, Sun Microsystems, Inc., and the
         Organization for the Advancement of Structured Information
         Standards (OASIS).

         $Id: dbpoolx.mod 6340 2006-10-03 13:23:24Z nwalsh $

         Permission to use, copy, modify and distribute the DocBook XML DTD
         and its accompanying documentation for any purpose and without fee
         is hereby granted in perpetuity, provided that the above copyright
         notice and this paragraph appear in all copies.  The copyright
         holders make no representation about the suitability of the DTD for
         any purpose.  It is provided "as is" without expressed or implied
         warranty.

         If you modify the DocBook XML DTD in any way, except for declaring and
         referencing additional sets of general entities and declaring
         additional notations, label your DTD as a variant of DocBook.  See
         the maintenance documentation for more information.

         Please direct all questions, bug reports, or suggestions for
         changes to the docbook@lists.oasis-open.org mailing list. For more
         information, see http://www.oasis-open.org/docbook/.
    -->

    <!-- ...................................................................... -->

    <!-- This module contains the definitions for the objects, inline
         elements, and so on that are available to be used as the main
         content of DocBook documents.  Some elements are useful for general
         publishing, and others are useful specifically for computer
         documentation.

         This module has the following dependencies on other modules:

         o It assumes that a %notation.class; entity is defined by the
           driver file or other high-level module.  This entity is
           referenced in the NOTATION attributes for the graphic-related and
           ModeSpec elements.

         o It assumes that an appropriately parameterized table module is
           available for use with the table-related elements.

         In DTD driver files referring to this module, please use an entity
         declaration that uses the public identifier shown below:

         <!ENTITY % dbpool PUBLIC
         "-//OASIS//ELEMENTS DocBook XML Information Pool V4.5//EN"
         "dbpoolx.mod">
         %dbpool;

         See the documentation for detailed information on the parameter
         entity and module scheme used in DocBook, customizing DocBook and
         planning for interchange, and changes made since the last release
         of DocBook.
    -->

    <!-- ...................................................................... -->
    <!-- Forms entities ....................................................... -->
    <!-- These PEs provide the hook by which the forms module can be inserted   -->
    <!-- into the DTD. -->
    <!ENTITY % forminlines.hook "">
    <!ENTITY % forms.hook "">

    <!-- ...................................................................... -->
    <!-- General-purpose semantics entities ................................... -->

    <!ENTITY % yesorno.attvals  "CDATA">

    <!-- ...................................................................... -->
    <!-- Entities for module inclusions ....................................... -->

    <!ENTITY % dbpool.redecl.module "IGNORE">

    <!-- ...................................................................... -->
    <!-- Entities for element classes and mixtures ............................ -->

    <!-- Object-level classes ................................................. -->

    <!ENTITY % local.list.class "">
    <!ENTITY % list.class
        "calloutlist|glosslist|itemizedlist|orderedlist|variablelist|tablist %local.list.class;">

    <!ENTITY % local.admon.class "">
    <!ENTITY % admon.class
        "important|note|tip|warning %local.admon.class;">

    <!ENTITY % local.linespecific.class "">
    <!ENTITY % linespecific.class
        "programlisting|programlistingco|screen|screenco|screenshot %local.linespecific.class;">

    <!ENTITY % local.para.class "">
    <!ENTITY % para.class
        "formalpara|para %local.para.class;">

    <!ENTITY % local.informal.class "">
    <!ENTITY % informal.class
        "mediaobject|mediaobjectco %local.informal.class;">

    <!ENTITY % local.formal.class "">
    <!ENTITY % formal.class
        "equation|example|table %local.formal.class;">

    <!-- The DocBook TC may produce an official EBNF module for DocBook. -->
    <!-- This PE provides the hook by which it can be inserted into the DTD. -->
    <!ENTITY % ebnf.block.hook "">

    <!ENTITY % local.compound.class "">
    <!ENTITY % compound.class
        "procedure
                 %ebnf.block.hook;
                 %local.compound.class;">

    <!ENTITY % local.genobj.class "">
    <!ENTITY % genobj.class
        "anchor|remark
		%local.genobj.class;">

    <!ENTITY % local.descobj.class "">
    <!ENTITY % descobj.class
        "abstract %local.descobj.class;">

    <!-- Character-level classes .............................................. -->

    <!ENTITY % local.xref.char.class "">
    <!ENTITY % xref.char.class
        "xref %local.xref.char.class;">

    <!ENTITY % local.gen.char.class "">
    <!ENTITY % gen.char.class
        "abbrev|citetitle|emphasis
		|glossterm|phrase|noloc %local.gen.char.class;">

    <!ENTITY % local.link.char.class "">
    <!ENTITY % link.char.class
        "link|olink|ulink %local.link.char.class;">

    <!-- The DocBook TC may produce an official EBNF module for DocBook. -->
    <!-- This PE provides the hook by which it can be inserted into the DTD. -->
    <!ENTITY % ebnf.inline.hook "">

    <!ENTITY % local.tech.char.class "">
    <!ENTITY % tech.char.class
        "command|computeroutput|email|errortext|filename|guilabel|keycap|keycombo|code|prompt|replaceable|userinput
                %ebnf.inline.hook;
		%local.tech.char.class;">

    <!ENTITY % local.base.char.class "">
    <!ENTITY % base.char.class
        "anchor %local.base.char.class;">

    <!ENTITY % local.other.char.class "">
    <!ENTITY % other.char.class
        "remark|subscript|superscript %local.other.char.class;">

    <!ENTITY % local.inlineobj.char.class "">
    <!ENTITY % inlineobj.char.class
        "inlinemediaobject %local.inlineobj.char.class;">

    <!-- ...................................................................... -->
    <!-- Entities for content models .......................................... -->

    <!ENTITY % formalobject.title.content "title, titleabbrev?">

    <!-- Redeclaration placeholder ............................................ -->

    <!-- For redeclaring entities that are declared after this point while
         retaining their references to the entities that are declared before
         this point -->

    <![%dbpool.redecl.module;[
        <!-- Defining rdbpool here makes some buggy XML parsers happy. -->
        <!ENTITY % rdbpool "">
        %rdbpool;
        <!--end of dbpool.redecl.module-->]]>

    <!-- Object-level mixtures ................................................ -->

    <!--
                          list admn line synp para infm form cmpd gen  desc
    Component mixture       X    X    X    X    X    X    X    X    X    X
    Sidebar mixture         X    X    X    X    X    X    X    a    X
    Footnote mixture        X         X    X    X    X
    Example mixture         X         X    X    X    X
    Highlights mixture      X    X              X
    Paragraph mixture       X         X    X         X
    Admonition mixture      X         X    X    X    X    X    b    c
    Figure mixture                    X    X         X
    Table entry mixture     X    X    X         X    d
    Glossary def mixture    X         X    X    X    X         e
    Legal notice mixture    X    X    X         X    f

    a. Just Procedure; not Sidebar itself or MsgSet.
    b. No MsgSet.
    c. No Highlights.
    d. Just Graphic; no other informal objects.
    e. No Anchor, BridgeHead, or Highlights.
    f. Just BlockQuote; no other informal objects.
    -->

    <!ENTITY % local.component.mix "">
    <!ENTITY % component.mix
        "%list.class;		|%admon.class;
		|%linespecific.class;
		|%para.class;		|%informal.class;
		|%formal.class;		|%compound.class;
		|%genobj.class;		|%descobj.class;
		%forms.hook;
                %local.component.mix;">

    <!ENTITY % local.example.mix "">
    <!ENTITY % example.mix
        "%list.class;
		|%linespecific.class;
		|%para.class;		|%informal.class;
		|procedure
		%forms.hook;
                %local.example.mix;">

    <!-- %formal.class; is explicitly excluded from many contexts in which
         paragraphs are used -->
    <!ENTITY % local.para.mix "">
    <!ENTITY % para.mix
        "%list.class;           |%admon.class;
		|%linespecific.class;
					|%informal.class;
		|%formal.class;
		%local.para.mix;">

    <!ENTITY % local.admon.mix "">
    <!ENTITY % admon.mix
        "%list.class;
		|%linespecific.class;
		|%para.class;		|%informal.class;
		|%formal.class;		|procedure
		|anchor|remark
		%forms.hook;
                %local.admon.mix;">

    <!ENTITY % local.tabentry.mix "">
    <!ENTITY % tabentry.mix
        "%list.class;		|%admon.class;
		|%linespecific.class;
		|%para.class;		|mediaobject
		%forms.hook;
		%local.tabentry.mix;">

    <!ENTITY % local.glossdef.mix "">
    <!ENTITY % glossdef.mix
        "%list.class;
		|%linespecific.class;
		|%para.class;		|%informal.class;
		|%formal.class;
		|remark
		%local.glossdef.mix;">

    <!ENTITY % local.legalnotice.mix "">
    <!ENTITY % legalnotice.mix
        "%list.class;		|%admon.class;
		|%linespecific.class;
		|%para.class;
		%local.legalnotice.mix;">

    <!ENTITY % local.textobject.mix "">
    <!ENTITY % textobject.mix
        "%list.class;		|%admon.class;
		|%linespecific.class;
		|%para.class;
		%local.textobject.mix;">

    <!ENTITY % local.mediaobject.mix "">
    <!ENTITY % mediaobject.mix
        "videoobject|audioobject|imageobject|imageobjectco|textobject|caption %local.mediaobject.mix;">

    <!ENTITY % local.listpreamble.mix "">
    <!ENTITY % listpreamble.mix
        "                  	 %admon.class;
		|%linespecific.class;
		|%para.class;		|%informal.class;
		|%genobj.class;		|%descobj.class;
		%forms.hook;
                %local.listpreamble.mix;">

    <!-- Character-level mixtures ............................................. -->

    <!-- not [sgml.features[ -->
    <!ENTITY % local.ubiq.mix "">
    <!ENTITY % ubiq.mix "">

    <!ENTITY % ubiq.exclusion "">
    <!ENTITY % ubiq.inclusion "">

    <!ENTITY % admon.exclusion "">
    <!ENTITY % formal.exclusion "">
    <!ENTITY % remark.exclusion "">
    <!ENTITY % glossterm.exclusion "">
    <!ENTITY % links.exclusion "">
    <!-- ]] not sgml.features -->

    <!--
                        #PCD xref word link cptr base dnfo othr inob (synop)
    para.char.mix         X    X    X    X    X    X    X    X    X
    title.char.mix        X    X    X    X    X    X    X    X    X
    cptr.char.mix         X              X    X    X         X    a
    smallcptr.char.mix    X                   b                   a
    word.char.mix         X         c    X         X         X    a
    docinfo.char.mix      X         d    X    b              X    a

    a. Just InlineGraphic; no InlineEquation.
    b. Just Replaceable; no other computer terms.
    c. Just Emphasis and Trademark; no other word elements.
    d. Just Acronym, Emphasis, and Trademark; no other word elements.
    -->

    <!ENTITY % local.para.char.mix "">
    <!ENTITY % para.char.mix
        "#PCDATA
		|%xref.char.class;	|%gen.char.class;
		|%link.char.class;	|%tech.char.class;
		|%base.char.class;
		|%other.char.class;	|%inlineobj.char.class;
                %forminlines.hook;
		%local.para.char.mix;">

    <!ENTITY % local.title.char.mix "">
    <!ENTITY % title.char.mix
        "#PCDATA
		|%xref.char.class;	|%gen.char.class;
		|%link.char.class;	|%tech.char.class;
		|%base.char.class;
		|%other.char.class;	|%inlineobj.char.class;
		%local.title.char.mix;">

    <!ENTITY % local.cptr.char.mix "">
    <!ENTITY % cptr.char.mix
        "#PCDATA
		|%link.char.class;	|%tech.char.class;
		|%base.char.class;
		|%other.char.class;	|inlinemediaobject
		%local.cptr.char.mix;">

    <!ENTITY % local.smallcptr.char.mix "">
    <!ENTITY % smallcptr.char.mix
        "#PCDATA
					|replaceable
					|inlinemediaobject
		%local.smallcptr.char.mix;">

    <!ENTITY % local.word.char.mix "">
    <!ENTITY % word.char.mix
        "#PCDATA
					|emphasis|trademark
		|%link.char.class;
		|%base.char.class;
		|%other.char.class;	|inlinemediaobject
		%local.word.char.mix;">

    <!ENTITY % local.docinfo.char.mix "">
    <!ENTITY % docinfo.char.mix
        "#PCDATA
		|%link.char.class;
					|emphasis|trademark
					|replaceable
		|%other.char.class;	|inlinemediaobject
		%local.docinfo.char.mix;">

    <!-- ...................................................................... -->
    <!-- Entities for attributes and attribute components ..................... -->

    <!-- Effectivity attributes ............................................... -->


    <!-- Arch: Computer or chip architecture to which element applies; no
      default -->

    <!ENTITY % arch.attrib
        "arch		CDATA		#IMPLIED">

    <!-- Condition: General-purpose effectivity attribute -->

    <!ENTITY % condition.attrib
        "condition	CDATA		#IMPLIED">

    <!-- Conformance: Standards conformance characteristics -->

    <!ENTITY % conformance.attrib
        "conformance	NMTOKENS	#IMPLIED">


    <!-- OS: Operating system to which element applies; no default -->

    <!ENTITY % os.attrib
        "os		CDATA		#IMPLIED">


    <!-- Revision: Editorial revision to which element belongs; no default -->

    <!ENTITY % revision.attrib
        "revision	CDATA		#IMPLIED">

    <!-- Security: Security classification; no default -->

    <!ENTITY % security.attrib
        "security	CDATA		#IMPLIED">

    <!-- UserLevel: Level of user experience to which element applies; no
      default -->

    <!ENTITY % userlevel.attrib
        "userlevel	CDATA		#IMPLIED">

    <!-- Vendor: Computer vendor to which element applies; no default -->

    <!ENTITY % vendor.attrib
        "vendor		CDATA		#IMPLIED">

    <!-- Wordsize: Computer word size (32 bit, 64 bit, etc.); no default -->

    <!ENTITY % wordsize.attrib
        "wordsize	CDATA		#IMPLIED">

    <!ENTITY % local.effectivity.attrib "">
    <!ENTITY % effectivity.attrib
        "%arch.attrib;
        %condition.attrib;
	%conformance.attrib;
	%os.attrib;
	%revision.attrib;
        %security.attrib;
	%userlevel.attrib;
	%vendor.attrib;
	%wordsize.attrib;
	%local.effectivity.attrib;"
        >

    <!-- Common attributes .................................................... -->


    <!-- Id: Unique identifier of element; no default -->

    <!ENTITY % id.attrib
        "id		ID		#IMPLIED">


    <!-- Id: Unique identifier of element; a value must be supplied; no
      default -->

    <!ENTITY % idreq.attrib
        "id		ID		#REQUIRED">


    <!-- Lang: Indicator of language in which element is written, for
      translation, character set management, etc.; no default -->

    <!ENTITY % lang.attrib
        "lang		CDATA		#IMPLIED">


    <!-- Remap: Previous role of element before conversion; no default -->

    <!ENTITY % remap.attrib
        "remap		CDATA		#IMPLIED">


    <!-- Role: New role of element in local environment; no default -->

    <!ENTITY % role.attrib
        "role		CDATA		#IMPLIED">


    <!-- XRefLabel: Alternate labeling string for XRef text generation;
      default is usually title or other appropriate label text already
      contained in element -->

    <!ENTITY % xreflabel.attrib
        "xreflabel	CDATA		#IMPLIED">


    <!-- Region: Specifies the regions for the content to appear (ZonBook) -->

    <!ENTITY % region.attrib
        "region	CDATA	#IMPLIED">


    <!-- BuildType: Specifies the build types for the content to appear (ZonBook) -->

    <!ENTITY % buildtype.attrib
        "buildtype	CDATA	#IMPLIED">


    <!-- RevisionFlag: Revision status of element; default is that element
      wasn't revised MODIFIED FOR AMAZON AWS-->

    <!-- ZonBook uses semicolon-separated names; using CDATA to reduce noise -->
    <!ENTITY % revisionflag.attrib
        "revisionflag	CDATA	#IMPLIED">

    <!--
    <!ENTITY % revisionflag.attrib
      "revisionflag	(changed
          |added
          |deleted
          |off
          |pdf
          |pdfcond
          |html
          |htmlcond
          |kindle
          |kindlecond)		#IMPLIED">
    -->
    <!ENTITY % local.common.attrib "">

    <!-- dir: Bidirectional override -->

    <!ENTITY % dir.attrib
        "dir		(ltr
			|rtl
			|lro
			|rlo)		#IMPLIED">

    <!-- xml:base: base URI -->

    <!ENTITY % xml-base.attrib
        "xml:base	CDATA		#IMPLIED">

    <!-- Role is included explicitly on each element -->

    <!ENTITY % common.attrib
        "%id.attrib;
	%lang.attrib;
	%remap.attrib;
	%xreflabel.attrib;
	%region.attrib;
	%buildtype.attrib;
	%revisionflag.attrib;
	%effectivity.attrib;
	%dir.attrib;
	%xml-base.attrib;
	%local.common.attrib;"
        >

    <!-- Role is included explicitly on each element -->

    <!ENTITY % idreq.common.attrib
        "%idreq.attrib;
	%lang.attrib;
	%remap.attrib;
	%xreflabel.attrib;
	%region.attrib;
	%buildtype.attrib;
	%revisionflag.attrib;
	%effectivity.attrib;
	%dir.attrib;
	%xml-base.attrib;
	%local.common.attrib;"
        >

    <!-- Semi-common attributes and other attribute entities .................. -->

    <!ENTITY % local.graphics.attrib "">

    <!-- EntityRef: Name of an external entity containing the content
      of the graphic -->
    <!-- FileRef: Filename, qualified by a pathname if desired,
      designating the file containing the content of the graphic -->
    <!-- Format: Notation of the element content, if any -->
    <!-- SrcCredit: Information about the source of the Graphic -->
    <!-- Width: Same as CALS reprowid (desired width) -->
    <!-- Depth: Same as CALS reprodep (desired depth) -->
    <!-- Align: Same as CALS hplace with 'none' removed; #IMPLIED means
      application-specific -->
    <!-- Scale: Conflation of CALS hscale and vscale -->
    <!-- Scalefit: Same as CALS scalefit -->

    <!ENTITY % graphics.attrib
        "
	entityref	ENTITY		#IMPLIED
	fileref 	CDATA		#IMPLIED
	format		(%notation.class;) #IMPLIED
	srccredit	CDATA		#IMPLIED
	width		CDATA		#IMPLIED
	contentwidth	CDATA		#IMPLIED
	depth		CDATA		#IMPLIED
	contentdepth	CDATA		#IMPLIED
	align		(left
			|right
			|center)	#IMPLIED
	valign		(top
			|middle
			|bottom)	#IMPLIED
	scale		CDATA		#IMPLIED
	scalefit	%yesorno.attvals;
					#IMPLIED
	%local.graphics.attrib;"
        >

    <!ENTITY % local.keyaction.attrib "">

    <!-- Action: Key combination type; default is unspecified if one
      child element, Simul if there is more than one; if value is
      Other, the OtherAction attribute must have a nonempty value -->
    <!-- OtherAction: User-defined key combination type -->

    <!ENTITY % keyaction.attrib
        "
	action		(click
			|double-click
			|press
			|seq
			|simul
			|other)		#IMPLIED
	otheraction	CDATA		#IMPLIED
	%local.keyaction.attrib;"
        >


    <!-- Label: Identifying number or string; default is usually the
      appropriate number or string autogenerated by a formatter -->

    <!ENTITY % label.attrib
        "label		CDATA		#IMPLIED">


    <!-- xml:space: whitespace treatment -->

    <!ENTITY % xml-space.attrib
        "xml:space	(preserve)		#IMPLIED">

    <!ENTITY % xml-lang.zxx.attrib
        "xml:lang	CDATA	'zxx'">

    <!-- Format: whether element is assumed to contain significant white
      space -->

    <!ENTITY % linespecific.attrib
        "format		NOTATION
			(linespecific)	'linespecific'
         %xml-space.attrib;
         linenumbering	(numbered|unnumbered) 	#IMPLIED
         continuation	(continues|restarts)	#IMPLIED
         startinglinenumber	CDATA		#IMPLIED
         language	CDATA			#IMPLIED">

    <!-- Linkend: link to related information; no default -->
    <!-- ZonBook uses NMTOKEN instead of IDREF to reduce noise about IDs not defined in current file -->
    <!ENTITY % linkend.attrib
        "linkend	NMTOKEN		#IMPLIED">


    <!-- Linkend: required link to related information -->
    <!-- ZonBook uses NMTOKEN instead of IDREF to reduce noise about IDs not defined in current file -->
    <!ENTITY % linkendreq.attrib
        "linkend	NMTOKEN		#REQUIRED">


    <!-- Linkends: link to one or more sets of related information; no
      default -->
    <!-- ZonBook uses NMTOKEN instead of IDREF to reduce noise about IDs not defined in current file -->
    <!ENTITY % linkends.attrib
        "linkends	NMTOKEN		#IMPLIED">


    <!ENTITY % local.mark.attrib "">
    <!ENTITY % mark.attrib
        "mark		CDATA		#IMPLIED
	%local.mark.attrib;"
        >

    <!-- Pagenum: number of page on which element appears; no default -->

    <!ENTITY % pagenum.attrib
        "pagenum	CDATA		#IMPLIED">

    <!ENTITY % local.status.attrib "">

    <!-- Status: Editorial or publication status of the element
      it applies to, such as "in review" or "approved for distribution" -->

    <!ENTITY % status.attrib
        "status		CDATA		#IMPLIED
	%local.status.attrib;"
        >


    <!-- Width: width of the longest line in the element to which it
      pertains, in number of characters -->

    <!ENTITY % width.attrib
        "width		CDATA		#IMPLIED">

    <!-- ...................................................................... -->
    <!-- Title elements ....................................................... -->

    <!ENTITY % title.module "INCLUDE">
    <![%title.module;[
        <!ENTITY % local.title.attrib "">
        <!ENTITY % title.role.attrib "%role.attrib;">

        <!ENTITY % title.element "INCLUDE">
        <![%title.element;[
            <!--doc:The text of the title of a section of a document or of a formal block-level element.-->
            <!ELEMENT title (%title.char.mix;)*>
            <!--end of title.element-->]]>

        <!ENTITY % title.attlist "INCLUDE">
        <![%title.attlist;[
            <!ATTLIST title
                %pagenum.attrib;
                %common.attrib;
                %title.role.attrib;
                %local.title.attrib;
                >
            <!--end of title.attlist-->]]>
        <!--end of title.module-->]]>

    <!ENTITY % titleabbrev.module "INCLUDE">
    <![%titleabbrev.module;[
        <!ENTITY % local.titleabbrev.attrib "">
        <!ENTITY % titleabbrev.role.attrib "%role.attrib;">

        <!ENTITY % titleabbrev.element "INCLUDE">
        <![%titleabbrev.element;[
            <!--doc:The abbreviation of a Title.-->
            <!ELEMENT titleabbrev (%title.char.mix;)*>
            <!--end of titleabbrev.element-->]]>

        <!ENTITY % titleabbrev.attlist "INCLUDE">
        <![%titleabbrev.attlist;[
            <!ATTLIST titleabbrev
                %common.attrib;
                %titleabbrev.role.attrib;
                %local.titleabbrev.attrib;
                >
            <!--end of titleabbrev.attlist-->]]>
        <!--end of titleabbrev.module-->]]>

    <!ENTITY % subtitle.module "INCLUDE">
    <![%subtitle.module;[
        <!ENTITY % local.subtitle.attrib "">
        <!ENTITY % subtitle.role.attrib "%role.attrib;">

        <!ENTITY % subtitle.element "INCLUDE">
        <![%subtitle.element;[
            <!--doc:The subtitle of a document.-->
            <!ELEMENT subtitle (%title.char.mix;)*>
            <!--end of subtitle.element-->]]>

        <!ENTITY % subtitle.attlist "INCLUDE">
        <![%subtitle.attlist;[
            <!ATTLIST subtitle
                %common.attrib;
                %subtitle.role.attrib;
                %local.subtitle.attrib;
                >
            <!--end of subtitle.attlist-->]]>
        <!--end of subtitle.module-->]]>

    <!ENTITY % local.info.class "">
    <!ENTITY % info.class
        "mediaobject | legalnotice | modespec | subjectset | keywordset | itermset | abbrev|abstract|copyright|corpauthor|edition
		|subtitle|title|titleabbrev|citetitle|publisher
                 %local.info.class;">

    <!-- ...................................................................... -->
    <!-- Compound (section-ish) elements ...................................... -->

    <!-- Procedure ........................ -->

    <!ENTITY % procedure.content.module "INCLUDE">
    <![%procedure.content.module;[
        <!ENTITY % procedure.module "INCLUDE">
        <![%procedure.module;[
            <!ENTITY % local.procedure.attrib "">
            <!ENTITY % procedure.role.attrib "%role.attrib;">

            <!ENTITY % procedure.element "INCLUDE">
            <![%procedure.element;[
                <!--doc:A list of operations to be performed in a well-defined sequence.-->
                <!ELEMENT procedure ((%formalobject.title.content;)?,
                    (%component.mix;)*, step+)>
                <!--end of procedure.element-->]]>

            <!ENTITY % procedure.attlist "INCLUDE">
            <![%procedure.attlist;[
                <!ATTLIST procedure
                    %common.attrib;
                    %procedure.role.attrib;
                    %local.procedure.attrib;
                    >
                <!--end of procedure.attlist-->]]>
            <!--end of procedure.module-->]]>

        <!ENTITY % step.module "INCLUDE">
        <![%step.module;[
            <!ENTITY % local.step.attrib "">
            <!ENTITY % step.role.attrib "%role.attrib;">

            <!ENTITY % step.element "INCLUDE">
            <![%step.element;[
                <!--doc:A unit of action in a procedure.-->
                <!ELEMENT step (title?, (((%component.mix;)+, ((substeps|stepalternatives), (%component.mix;)*)?)
                    | ((substeps|stepalternatives), (%component.mix;)*)))>
                    <!--end of step.element-->]]>

            <!-- Performance: Whether the Step must be performed -->
            <!-- not #REQUIRED! -->


            <!ENTITY % step.attlist "INCLUDE">
            <![%step.attlist;[
                <!ATTLIST step
                    performance  (optional
                        |required)  "required"
                    %common.attrib;
                    %step.role.attrib;
                    %local.step.attrib;
                    >
                <!--end of step.attlist-->]]>
            <!--end of step.module-->]]>

        <!ENTITY % substeps.module "INCLUDE">
        <![%substeps.module;[
            <!ENTITY % local.substeps.attrib "">
            <!ENTITY % substeps.role.attrib "%role.attrib;">

            <!ENTITY % substeps.element "INCLUDE">
            <![%substeps.element;[
                <!--doc:A wrapper for steps that occur within steps in a procedure.-->
                <!ELEMENT substeps (step+)>
                <!--end of substeps.element-->]]>

            <!-- Performance: whether entire set of substeps must be performed -->
            <!-- not #REQUIRED! -->

            <!ENTITY % substeps.attlist "INCLUDE">
            <![%substeps.attlist;[
                <!ATTLIST substeps
                    performance  (optional
                        |required)  "required"
                    %common.attrib;
                    %substeps.role.attrib;
                    %local.substeps.attrib;
                    >
                <!--end of substeps.attlist-->]]>
            <!--end of substeps.module-->]]>

            <!ENTITY % stepalternatives.module "INCLUDE">
            <![%stepalternatives.module;[
                <!ENTITY % local.stepalternatives.attrib "">
                <!ENTITY % stepalternatives.role.attrib "%role.attrib;">

                <!ENTITY % stepalternatives.element "INCLUDE">
                <![%stepalternatives.element;[
                    <!--doc:Alternative steps in a procedure.
                    Most steps in a procedure are sequential: do the first, then the
                    second, then the third. Sometimes procedures provide an explicit
                    ordering: do step 7 next.The step alternatives element was added
                    to support the semantics of alternative steps: perform exactly
                    one of the following steps. The reader is presumably given some
                    criteria for deciding which one to choose, but the significant
                    difference is that only one of the steps is performed.-->
                <!ELEMENT stepalternatives (step+)>
                <!--end of stepalternatives.element-->]]>

                <!-- Performance: Whether (one of) the alternatives must be performed -->
                <!-- not #REQUIRED! -->

                <!ENTITY % stepalternatives.attlist "INCLUDE">
                <![%stepalternatives.attlist;[
                    <!ATTLIST stepalternatives
                        performance  (optional
                            |required)  "required"
                        %common.attrib;
                        %stepalternatives.role.attrib;
                        %local.stepalternatives.attrib;
                        >
                    <!--end of stepalternatives.attlist-->]]>
            <!--end of stepalternatives.module-->]]>

        <!--end of procedure.content.module-->]]>

    <!-- ...................................................................... -->
    <!-- Paragraph-related elements ........................................... -->

    <!ENTITY % abstract.module "INCLUDE">
    <![%abstract.module;[
        <!ENTITY % local.abstract.attrib "">
        <!ENTITY % abstract.role.attrib "%role.attrib;">

        <!ENTITY % abstract.element "INCLUDE">
        <![%abstract.element;[
            <!--doc:A summary.-->
            <!ELEMENT abstract (title?, (%para.class;)+)>
            <!--end of abstract.element-->]]>

        <!ENTITY % abstract.attlist "INCLUDE">
        <![%abstract.attlist;[
            <!ATTLIST abstract
                %common.attrib;
                %abstract.role.attrib;
                %local.abstract.attrib;
                >
            <!--end of abstract.attlist-->]]>
        <!--end of abstract.module-->]]>

    <!ENTITY % remark.module "INCLUDE">
    <![%remark.module;[
        <!ENTITY % local.remark.attrib "">
        <!ENTITY % remark.role.attrib "%role.attrib;">

        <!ENTITY % remark.element "INCLUDE">
        <![%remark.element;[
            <!--doc:A remark (or comment) intended for presentation in a draft manuscript.-->
            <!ELEMENT remark (%para.char.mix;)*
                %remark.exclusion;>
            <!--end of remark.element-->]]>

        <!ENTITY % remark.attlist "INCLUDE">
        <![%remark.attlist;[
            <!ATTLIST remark
                %common.attrib;
                %remark.role.attrib;
                %local.remark.attrib;
                >
            <!--end of remark.attlist-->]]>
        <!--end of remark.module-->]]>

    <!ENTITY % formalpara.module "INCLUDE">
    <![%formalpara.module;[
        <!ENTITY % local.formalpara.attrib "">
        <!ENTITY % formalpara.role.attrib "%role.attrib;">

        <!ENTITY % formalpara.element "INCLUDE">
        <![%formalpara.element;[
            <!--doc:A paragraph with a title.-->
            <!-- ZonBook multiple para in formalpara -->
            <!ELEMENT formalpara (title, para)>
            <!--end of formalpara.element-->]]>

        <!ENTITY % formalpara.attlist "INCLUDE">
        <![%formalpara.attlist;[
            <!ATTLIST formalpara
                %common.attrib;
                %formalpara.role.attrib;
                %local.formalpara.attrib;
                >
            <!--end of formalpara.attlist-->]]>
        <!--end of formalpara.module-->]]>

    <!ENTITY % para.module "INCLUDE">
    <![%para.module;[
        <!ENTITY % local.para.attrib "">
        <!ENTITY % para.role.attrib
            "role (banner.info
                  |bold
                  |contents
                  |contents-abbrev
                  |topcom
                  |topic
                  |topiclist
                  |topiclist-abbrev)  #IMPLIED">

        <!ENTITY % para.element "INCLUDE">
        <![%para.element;[
            <!--doc:A paragraph.-->
            <!ELEMENT para (%para.char.mix;)*>
            <!--end of para.element-->]]>

        <!ENTITY % para.attlist "INCLUDE">
        <![%para.attlist;[
            <!ATTLIST para
                %common.attrib;
                %para.role.attrib;
                %local.para.attrib;
                >
            <!--end of para.attlist-->]]>
        <!--end of para.module-->]]>

    <!ENTITY % admon.module "INCLUDE">
    <![%admon.module;[
        <!ENTITY % local.admon.attrib "">
        <!ENTITY % admon.role.attrib "%role.attrib;">


        <!ENTITY % tip.element "INCLUDE">
        <![%tip.element;[
            <!--doc:A suggestion to the user, set off from the text.-->
            <!ELEMENT tip (title?, (%admon.mix;)+)
                %admon.exclusion;>
            <!--end of tip.element-->]]>

        <!ENTITY % tip.attlist "INCLUDE">
        <![%tip.attlist;[
            <!ATTLIST tip
                %common.attrib;
                %admon.role.attrib;
                %local.admon.attrib;
                >
            <!--end of tip.attlist-->]]>


        <!ENTITY % important.element "INCLUDE">
        <![%important.element;[
            <!--doc:An admonition set off from the text.-->
            <!ELEMENT important (title?, (%admon.mix;)+)
                %admon.exclusion;>
            <!--end of important.element-->]]>

        <!ENTITY % important.attlist "INCLUDE">
        <![%important.attlist;[
            <!ATTLIST important
                %common.attrib;
                %admon.role.attrib;
                %local.admon.attrib;
                >
            <!--end of important.attlist-->]]>


        <!ENTITY % note.element "INCLUDE">
        <![%note.element;[
            <!--doc:A message set off from the text.-->
            <!ELEMENT note (title?, (%admon.mix;)+)
                %admon.exclusion;>
            <!--end of note.element-->]]>

        <!ENTITY % note.attlist "INCLUDE">
        <![%note.attlist;[
            <!ATTLIST note
                %common.attrib;
                %admon.role.attrib;
                %local.admon.attrib;
                >
            <!--end of note.attlist-->]]>

        <!ENTITY % warning.element "INCLUDE">
        <![%warning.element;[
            <!--doc:An admonition set off from the text.-->
            <!ELEMENT warning (title?, (%admon.mix;)+)
                %admon.exclusion;>
            <!--end of warning.element-->]]>

        <!ENTITY % warning.attlist "INCLUDE">
        <![%warning.attlist;[
            <!ATTLIST warning
                %common.attrib;
                %admon.role.attrib;
                %local.admon.attrib;
                >
            <!--end of warning.attlist-->]]>

        <!--end of admon.module-->]]>

    <!-- ...................................................................... -->
    <!-- Lists ................................................................ -->

    <!ENTITY % glossentry.content.module "INCLUDE">
    <![%glossentry.content.module;[
        <!ENTITY % glossentry.module "INCLUDE">
        <![%glossentry.module;[
            <!ENTITY % local.glossentry.attrib "">
            <!ENTITY % glossentry.role.attrib "%role.attrib;">

            <!ENTITY % glossentry.element "INCLUDE">
            <![%glossentry.element;[
                <!--doc:An entry in a Glossary or GlossList.-->
                <!ELEMENT glossentry (glossterm, abbrev?,
                    (glosssee|glossdef+))>
                <!--end of glossentry.element-->]]>

            <!-- SortAs: String by which the GlossEntry is to be sorted
                (alphabetized) in lieu of its proper content -->


            <!ENTITY % glossentry.attlist "INCLUDE">
            <![%glossentry.attlist;[
                <!ATTLIST glossentry
                    sortas    CDATA    #IMPLIED
                    %common.attrib;
                    %glossentry.role.attrib;
                    %local.glossentry.attrib;
                    >
                <!--end of glossentry.attlist-->]]>
            <!--end of glossentry.module-->]]>

        <!-- GlossTerm (defined in the Inlines section, below)-->
        <!ENTITY % glossdef.module "INCLUDE">
        <![%glossdef.module;[
            <!ENTITY % local.glossdef.attrib "">
            <!ENTITY % glossdef.role.attrib "%role.attrib;">

            <!ENTITY % glossdef.element "INCLUDE">
            <![%glossdef.element;[
                <!--doc:A definition in a GlossEntry.-->
                <!ELEMENT glossdef ((%glossdef.mix;)+, glossseealso*)>
                <!--end of glossdef.element-->]]>

            <!-- Subject: List of subjects; keywords for the definition -->


            <!ENTITY % glossdef.attlist "INCLUDE">
            <![%glossdef.attlist;[
                <!ATTLIST glossdef
                    subject    CDATA    #IMPLIED
                    %common.attrib;
                    %glossdef.role.attrib;
                    %local.glossdef.attrib;
                    >
                <!--end of glossdef.attlist-->]]>
            <!--end of glossdef.module-->]]>

        <!ENTITY % glosssee.module "INCLUDE">
        <![%glosssee.module;[
            <!ENTITY % local.glosssee.attrib "">
            <!ENTITY % glosssee.role.attrib "%role.attrib;">

            <!ENTITY % glosssee.element "INCLUDE">
            <![%glosssee.element;[
                <!--doc:A cross-reference from one GlossEntry to another.-->
                <!ELEMENT glosssee (%para.char.mix;)*>
                <!--end of glosssee.element-->]]>

            <!-- OtherTerm: Reference to the GlossEntry whose GlossTerm
                should be displayed at the point of the GlossSee -->


            <!ENTITY % glosssee.attlist "INCLUDE">
            <![%glosssee.attlist;[
                <!ATTLIST glosssee
                    otherterm  IDREF    #IMPLIED
                    %common.attrib;
                    %glosssee.role.attrib;
                    %local.glosssee.attrib;
                    >
                <!--end of glosssee.attlist-->]]>
            <!--end of glosssee.module-->]]>

        <!ENTITY % glossseealso.module "INCLUDE">
        <![%glossseealso.module;[
            <!ENTITY % local.glossseealso.attrib "">
            <!ENTITY % glossseealso.role.attrib "%role.attrib;">

            <!ENTITY % glossseealso.element "INCLUDE">
            <![%glossseealso.element;[
                <!--doc:A cross-reference from one GlossEntry to another.-->
                <!ELEMENT glossseealso (%para.char.mix;)*>
                <!--end of glossseealso.element-->]]>

            <!-- OtherTerm: Reference to the GlossEntry whose GlossTerm
                should be displayed at the point of the GlossSeeAlso -->


            <!ENTITY % glossseealso.attlist "INCLUDE">
            <![%glossseealso.attlist;[
                <!ATTLIST glossseealso
                    otherterm  IDREF    #IMPLIED
                    %common.attrib;
                    %glossseealso.role.attrib;
                    %local.glossseealso.attrib;
                    >
                <!--end of glossseealso.attlist-->]]>
            <!--end of glossseealso.module-->]]>
        <!--end of glossentry.content.module-->]]>

    <!-- ItemizedList and OrderedList ..... -->

    <!ENTITY % itemizedlist.module "INCLUDE">
    <![%itemizedlist.module;[
        <!ENTITY % local.itemizedlist.attrib "">
        <!ENTITY % itemizedlist.role.attrib "%role.attrib;">

        <!ENTITY % itemizedlist.element "INCLUDE">
        <![%itemizedlist.element;[
            <!--doc:A list in which each entry is marked with a bullet or other dingbat.-->
            <!ELEMENT itemizedlist ((%formalobject.title.content;)?,
                (%listpreamble.mix;)*, listitem+)>

            <!--end of itemizedlist.element-->]]>

        <!-- Spacing: Whether the vertical space in the list should be
            compressed -->
        <!-- Mark: Keyword, e.g., bullet, dash, checkbox, none;
            list of keywords and defaults are implementation specific -->


        <!ENTITY % itemizedlist.attlist "INCLUDE">
        <![%itemizedlist.attlist;[
            <!ATTLIST itemizedlist
                spacing    (normal
                    |compact)  #IMPLIED
                %mark.attrib;
                %common.attrib;
                %itemizedlist.role.attrib;
                %local.itemizedlist.attrib;
                >
            <!--end of itemizedlist.attlist-->]]>
        <!--end of itemizedlist.module-->]]>

    <!ENTITY % orderedlist.module "INCLUDE">
    <![%orderedlist.module;[
        <!ENTITY % local.orderedlist.attrib "">
        <!ENTITY % orderedlist.role.attrib "%role.attrib;">

        <!ENTITY % orderedlist.element "INCLUDE">
        <![%orderedlist.element;[
            <!--doc:A list in which each entry is marked with a sequentially incremented label.-->
            <!ELEMENT orderedlist ((%formalobject.title.content;)?,
                (%listpreamble.mix;)*, listitem+)>

            <!--end of orderedlist.element-->]]>

        <!-- Numeration: Style of ListItem numbered; default is expected
            to be Arabic -->
        <!-- InheritNum: Specifies for a nested list that the numbering
            of ListItems should include the number of the item
            within which they are nested (e.g., 1a and 1b within 1,
            rather than a and b) -->
        <!-- Continuation: Where list numbering begins afresh (Restarts,
            the default) or continues that of the immediately preceding
            list (Continues) -->
        <!-- Spacing: Whether the vertical space in the list should be
            compressed -->


        <!ENTITY % orderedlist.attlist "INCLUDE">
        <![%orderedlist.attlist;[
            <!ATTLIST orderedlist
                numeration  (arabic
                    |upperalpha
                    |loweralpha
                    |upperroman
                    |lowerroman)  #IMPLIED
                inheritnum  (inherit
                    |ignore)  "ignore"
                continuation  (continues
                    |restarts)  "restarts"
                spacing    (normal
                    |compact)  #IMPLIED
                %common.attrib;
                %orderedlist.role.attrib;
                %local.orderedlist.attrib;
                >
            <!--end of orderedlist.attlist-->]]>
        <!--end of orderedlist.module-->]]>

    <!ENTITY % listitem.module "INCLUDE">
    <![%listitem.module;[
        <!ENTITY % local.listitem.attrib "">
        <!ENTITY % listitem.role.attrib "%role.attrib;">

        <!ENTITY % listitem.element "INCLUDE">
        <![%listitem.element;[
            <!--doc:A wrapper for the elements of a list item.-->
            <!ELEMENT listitem ((%component.mix;)+)>
            <!--end of listitem.element-->]]>

        <!-- Override: Indicates the mark to be used for this ListItem
            instead of the default mark or the mark specified by
            the Mark attribute on the enclosing ItemizedList -->


        <!ENTITY % listitem.attlist "INCLUDE">
        <![%listitem.attlist;[
            <!ATTLIST listitem
                override  CDATA    #IMPLIED
                %common.attrib;
                %listitem.role.attrib;
                %local.listitem.attrib;
                >
            <!--end of listitem.attlist-->]]>
        <!--end of listitem.module-->]]>

    <!-- VariableList ..................... -->

    <!ENTITY % variablelist.content.module "INCLUDE">
    <![%variablelist.content.module;[
        <!ENTITY % variablelist.module "INCLUDE">
        <![%variablelist.module;[
            <!ENTITY % local.variablelist.attrib "">
            <!ENTITY % variablelist.role.attrib "%role.attrib;">

            <!ENTITY % variablelist.element "INCLUDE">
            <![%variablelist.element;[
                <!--doc:A list in which each entry is composed of a set of one or more terms and an associated description.-->
                <!ELEMENT variablelist ((%formalobject.title.content;)?,
                    (%listpreamble.mix;)*, varlistentry+)>
                <!--end of variablelist.element-->]]>

            <!-- TermLength: Length beyond which the presentation engine
                may consider the Term too long and select an alternate
                presentation of the Term and, or, its associated ListItem. -->


            <!ENTITY % variablelist.attlist "INCLUDE">
            <![%variablelist.attlist;[
                <!ATTLIST variablelist
                    termlength  CDATA    #IMPLIED
                    spacing    (normal
                        |compact)  #IMPLIED
                    %common.attrib;
                    %variablelist.role.attrib;
                    %local.variablelist.attrib;
                    >
                <!--end of variablelist.attlist-->]]>
            <!--end of variablelist.module-->]]>

        <!ENTITY % varlistentry.module "INCLUDE">
        <![%varlistentry.module;[
            <!ENTITY % local.varlistentry.attrib "">
            <!ENTITY % varlistentry.role.attrib "%role.attrib;">

            <!ENTITY % varlistentry.element "INCLUDE">
            <![%varlistentry.element;[
                <!--doc:A wrapper for a set of terms and the associated description in a variable list.-->
                <!ELEMENT varlistentry (term+, listitem)>
                <!--end of varlistentry.element-->]]>

            <!ENTITY % varlistentry.attlist "INCLUDE">
            <![%varlistentry.attlist;[
                <!ATTLIST varlistentry
                    %common.attrib;
                    %varlistentry.role.attrib;
                    %local.varlistentry.attrib;
                    >
                <!--end of varlistentry.attlist-->]]>
            <!--end of varlistentry.module-->]]>

        <!ENTITY % term.module "INCLUDE">
        <![%term.module;[
            <!ENTITY % local.term.attrib "">
            <!ENTITY % term.role.attrib "%role.attrib;">

            <!ENTITY % term.element "INCLUDE">
            <![%term.element;[
                <!--doc:The word or phrase being defined or described in a variable list.
                The Term in a VarListEntry identifies the thing that is described or defined by that entry.-->
                <!ELEMENT term (%para.char.mix;)*>
                <!--end of term.element-->]]>

            <!ENTITY % term.attlist "INCLUDE">
            <![%term.attlist;[
                <!ATTLIST term
                    %common.attrib;
                    %term.role.attrib;
                    %local.term.attrib;
                    >
                <!--end of term.attlist-->]]>
            <!--end of term.module-->]]>

        <!-- ListItem (defined above)-->
        <!--end of variablelist.content.module-->]]>

    <!-- CalloutList ...................... -->

    <!ENTITY % calloutlist.content.module "INCLUDE">
    <![%calloutlist.content.module;[
        <!ENTITY % calloutlist.module "INCLUDE">
        <![%calloutlist.module;[
            <!ENTITY % local.calloutlist.attrib "">
            <!ENTITY % calloutlist.role.attrib "%role.attrib;">

            <!ENTITY % calloutlist.element "INCLUDE">
            <![%calloutlist.element;[
                <!--doc:A list of Callouts.-->
                <!ELEMENT calloutlist ((%formalobject.title.content;)?, callout+)>
                <!--end of calloutlist.element-->]]>

            <!ENTITY % calloutlist.attlist "INCLUDE">
            <![%calloutlist.attlist;[
                <!ATTLIST calloutlist
                    %common.attrib;
                    %calloutlist.role.attrib;
                    %local.calloutlist.attrib;
                    >
                <!--end of calloutlist.attlist-->]]>
            <!--end of calloutlist.module-->]]>

        <!ENTITY % callout.module "INCLUDE">
        <![%callout.module;[
            <!ENTITY % local.callout.attrib "">
            <!ENTITY % callout.role.attrib "%role.attrib;">

            <!ENTITY % callout.element "INCLUDE">
            <![%callout.element;[
                <!--doc:A &ldquo;called out&rdquo; description of a marked Area.-->
                <!ELEMENT callout ((%component.mix;)+)>
                <!--end of callout.element-->]]>

            <!-- AreaRefs: IDs of one or more Areas or AreaSets described
                by this Callout -->


            <!ENTITY % callout.attlist "INCLUDE">
            <![%callout.attlist;[
                <!ATTLIST callout
                    arearefs  IDREFS    #REQUIRED
                    %common.attrib;
                    %callout.role.attrib;
                    %local.callout.attrib;
                    >
                <!--end of callout.attlist-->]]>
            <!--end of callout.module-->]]>
        <!--end of calloutlist.content.module-->]]>

    <!-- ...................................................................... -->
    <!-- Objects .............................................................. -->

    <!-- Examples etc. .................... -->

    <!ENTITY % example.module "INCLUDE">
    <![%example.module;[
        <!ENTITY % local.example.attrib "">
        <!ENTITY % example.role.attrib "%role.attrib;">

        <!ENTITY % example.element "INCLUDE">
        <![%example.element;[
            <!--doc:A formal example, with a title.-->
            <!ELEMENT example ((%formalobject.title.content;)?, (%example.mix;)+)
                %formal.exclusion;>
            <!--end of example.element-->]]>

        <!ENTITY % example.attlist "INCLUDE">
        <![%example.attlist;[
            <!ATTLIST example
                floatstyle  CDATA      #IMPLIED
                %label.attrib;
                %width.attrib;
                %common.attrib;
                %example.role.attrib;
                %local.example.attrib;
                >
            <!--end of example.attlist-->]]>
        <!--end of example.module-->]]>

    <!ENTITY % areaspec.content.module "INCLUDE">
    <![%areaspec.content.module;[
        <!ENTITY % areaspec.module "INCLUDE">
        <![%areaspec.module;[
            <!ENTITY % local.areaspec.attrib "">
            <!ENTITY % areaspec.role.attrib "%role.attrib;">

            <!ENTITY % areaspec.element "INCLUDE">
            <![%areaspec.element;[
                <!--doc:A collection of regions in a graphic or code example.-->
                <!ELEMENT areaspec ((area)+)>
                <!--end of areaspec.element-->]]>

            <!-- Units: global unit of measure in which coordinates in
                this spec are expressed:

                - CALSPair "x1,y1 x2,y2": lower-left and upper-right
                coordinates in a rectangle describing repro area in which
                graphic is placed, where X and Y dimensions are each some
                number 0..10000 (taken from CALS graphic attributes)

                - LineColumn "line column": line number and column number
                at which to start callout text in "linespecific" content

                - LineRange "startline endline": whole lines from startline
                to endline in "linespecific" content

                - LineColumnPair "line1 col1 line2 col2": starting and ending
                points of area in "linespecific" content that starts at
                first position and ends at second position (including the
                beginnings of any intervening lines)

                - Other: directive to look at value of OtherUnits attribute
                to get implementation-specific keyword

                The default is implementation-specific; usually dependent on
                the parent element (GraphicCO gets CALSPair, ProgramListingCO
                and ScreenCO get LineColumn) -->
            <!-- OtherUnits: User-defined units -->


            <!ENTITY % areaspec.attlist "INCLUDE">
            <![%areaspec.attlist;[
                <!ATTLIST areaspec
                    units    (calspair
                        |linecolumn
                        |linerange
                        |linecolumnpair
                        |other)    #IMPLIED
                    otherunits  NMTOKEN    #IMPLIED
                    %common.attrib;
                    %areaspec.role.attrib;
                    %local.areaspec.attrib;
                    >
                <!--end of areaspec.attlist-->]]>
            <!--end of areaspec.module-->]]>

        <!ENTITY % area.module "INCLUDE">
        <![%area.module;[
            <!ENTITY % local.area.attrib "">
            <!ENTITY % area.role.attrib "%role.attrib;">

            <!ENTITY % area.element "INCLUDE">
            <![%area.element;[
                <!--doc:A region defined for a Callout in a graphic or code example.-->
                <!ELEMENT area EMPTY>
                <!--end of area.element-->]]>

            <!-- bug number/symbol override or initialization -->
            <!-- to any related information -->
            <!-- Units: unit of measure in which coordinates in this
                area are expressed; inherits from AreaSet and AreaSpec -->
            <!-- OtherUnits: User-defined units -->


            <!ENTITY % area.attlist "INCLUDE">
            <![%area.attlist;[
                <!ATTLIST area
                    %label.attrib;
                    %linkends.attrib;
                    units    (calspair
                        |linecolumn
                        |linerange
                        |linecolumnpair
                        |other)    #IMPLIED
                    otherunits  NMTOKEN    #IMPLIED
                    coords    CDATA    #REQUIRED
                    %idreq.common.attrib;
                    %area.role.attrib;
                    %local.area.attrib;
                    >
                <!--end of area.attlist-->]]>
            <!--end of area.module-->]]>
        <!--end of areaspec.content.module-->]]>

    <!ENTITY % programlisting.module "INCLUDE">
    <![%programlisting.module;[
        <!ENTITY % local.programlisting.attrib "">
        <!ENTITY % programlisting.role.attrib "%role.attrib;">

        <!ENTITY % programlisting.element "INCLUDE">
        <![%programlisting.element;[
            <!--doc:A literal listing of all or part of a program.-->
            <!ELEMENT programlisting (%para.char.mix;|co|textobject)*>
            <!--end of programlisting.element-->]]>

        <!ENTITY % programlisting.attlist "INCLUDE">
        <![%programlisting.attlist;[
            <!ATTLIST programlisting
                %width.attrib;
                %linespecific.attrib;
                %common.attrib;
                %programlisting.role.attrib;
                %local.programlisting.attrib;
                %xml-lang.zxx.attrib;
                >
            <!--end of programlisting.attlist-->]]>
        <!--end of programlisting.module-->]]>

    <!-- Figures etc. ..................... -->

    <!ENTITY % mediaobject.content.module "INCLUDE">
    <![ %mediaobject.content.module; [

        <!ENTITY % mediaobject.module "INCLUDE">
        <![ %mediaobject.module; [
            <!ENTITY % local.mediaobject.attrib "">
            <!ENTITY % mediaobject.role.attrib "%role.attrib;">

            <!ENTITY % mediaobject.element "INCLUDE">
            <![ %mediaobject.element; [
                <!--doc:A displayed media object (video, audio, image, etc.).-->
                <!ELEMENT mediaobject ((%mediaobject.mix;)+)>
                <!--end of mediaobject.element-->]]>

            <!ENTITY % mediaobject.attlist "INCLUDE">
            <![ %mediaobject.attlist; [
                <!ATTLIST mediaobject
                    %common.attrib;
                    %mediaobject.role.attrib;
                    %local.mediaobject.attrib;
                    >
                <!--end of mediaobject.attlist-->]]>
            <!--end of mediaobject.module-->]]>

        <!ENTITY % inlinemediaobject.module "INCLUDE">
        <![ %inlinemediaobject.module; [
            <!ENTITY % local.inlinemediaobject.attrib "">
            <!ENTITY % inlinemediaobject.role.attrib "%role.attrib;">

            <!ENTITY % inlinemediaobject.element "INCLUDE">
            <![ %inlinemediaobject.element; [
                <!--doc:An inline media object (video, audio, image, and so on).-->
                <!ELEMENT inlinemediaobject ((%mediaobject.mix;)+)>
                <!--end of inlinemediaobject.element-->]]>

            <!ENTITY % inlinemediaobject.attlist "INCLUDE">
            <![ %inlinemediaobject.attlist; [
                <!ATTLIST inlinemediaobject
                    %common.attrib;
                    %inlinemediaobject.role.attrib;
                    %local.inlinemediaobject.attrib;
                    >
                <!--end of inlinemediaobject.attlist-->]]>
            <!--end of inlinemediaobject.module-->]]>

        <!ENTITY % videoobject.module "INCLUDE">
        <![ %videoobject.module; [
            <!ENTITY % local.videoobject.attrib "">
            <!ENTITY % videoobject.role.attrib "%role.attrib;">

            <!ENTITY % videoobject.element "INCLUDE">
            <![ %videoobject.element; [
                <!--doc:A wrapper for video data and its associated meta-information.-->
                <!ELEMENT videoobject (videodata)>
                <!--end of videoobject.element-->]]>

            <!ENTITY % videoobject.attlist "INCLUDE">
            <![ %videoobject.attlist; [
                <!ATTLIST videoobject
                    %common.attrib;
                    %videoobject.role.attrib;
                    %local.videoobject.attrib;
                    >
                <!--end of videoobject.attlist-->]]>
            <!--end of videoobject.module-->]]>

        <!ENTITY % imageobject.module "INCLUDE">
        <![ %imageobject.module; [
            <!ENTITY % local.imageobject.attrib "">
            <!ENTITY % imageobject.role.attrib "%role.attrib;">

            <!ENTITY % imageobject.element "INCLUDE">
            <![ %imageobject.element; [
                <!--doc:A wrapper for image data and its associated meta-information.-->
                <!-- ZonBook supports multiple imagedata because all but one should be profiled out -->
                <!ELEMENT imageobject (imagedata+)>
                <!--end of imageobject.element-->]]>

            <!ENTITY % imageobject.attlist "INCLUDE">
            <![ %imageobject.attlist; [
                <!ATTLIST imageobject
                    %common.attrib;
                    %imageobject.role.attrib;
                    %local.imageobject.attrib;
                    >
                <!--end of imageobject.attlist-->]]>
            <!--end of imageobject.module-->]]>

        <!ENTITY % textobject.module "INCLUDE">
        <![ %textobject.module; [
            <!ENTITY % local.textobject.attrib "">
            <!ENTITY % textobject.role.attrib "%role.attrib;">

            <!ENTITY % textobject.element "INCLUDE">
            <![ %textobject.element; [
                <!--doc:A wrapper for a text description of an object and its associated meta-information.-->
                <!ELEMENT textobject ((phrase|(%textobject.mix;)+))>
                <!--end of textobject.element-->]]>

            <!ENTITY % textobject.attlist "INCLUDE">
            <![ %textobject.attlist; [
                <!ATTLIST textobject
                    %common.attrib;
                    %textobject.role.attrib;
                    %local.textobject.attrib;
                    >
                <!--end of textobject.attlist-->]]>
            <!--end of textobject.module-->]]>

        <!--EntityRef: Name of an external entity containing the content
          of the object data-->
        <!--FileRef: Filename, qualified by a pathname if desired,
          designating the file containing the content of the object data-->
        <!--Format: Notation of the element content, if any-->
        <!--SrcCredit: Information about the source of the image-->
        <!ENTITY % local.objectdata.attrib "">
        <!ENTITY % objectdata.attrib
            "
	entityref	ENTITY		#IMPLIED
	fileref 	CDATA		#IMPLIED
	format		(%notation.class;)
					#IMPLIED
	srccredit	CDATA		#IMPLIED
	%local.objectdata.attrib;"
            >

        <!ENTITY % videodata.module "INCLUDE">
        <![ %videodata.module; [
            <!ENTITY % local.videodata.attrib "">
            <!ENTITY % videodata.role.attrib "%role.attrib;">

            <!ENTITY % videodata.element "INCLUDE">
            <![ %videodata.element; [
                <!--doc:Pointer to external video data.-->
                <!ELEMENT videodata EMPTY>
                <!--end of videodata.element-->]]>

            <!ENTITY % videodata.attlist "INCLUDE">
            <![ %videodata.attlist; [

                <!--Width: Same as CALS reprowid (desired width)-->
                <!--Depth: Same as CALS reprodep (desired depth)-->
                <!--Align: Same as CALS hplace with 'none' removed; #IMPLIED means
                  application-specific-->
                <!--Scale: Conflation of CALS hscale and vscale-->
                <!--Scalefit: Same as CALS scalefit-->
                <!ATTLIST videodata
                    width    CDATA    #IMPLIED
                    contentwidth  CDATA    #IMPLIED
                    depth    CDATA    #IMPLIED
                    contentdepth  CDATA    #IMPLIED
                    align    (left
                        |right
                        |center)  #IMPLIED
                    valign    (top
                        |middle
                        |bottom)  #IMPLIED
                    scale    CDATA    #IMPLIED
                    scalefit  %yesorno.attvals;
                        #IMPLIED
                    %objectdata.attrib;
                    %common.attrib;
                    %videodata.role.attrib;
                    %local.videodata.attrib;
                    >
                <!--end of videodata.attlist-->]]>
            <!--end of videodata.module-->]]>

        <!ENTITY % imagedata.module "INCLUDE">
        <![ %imagedata.module; [
            <!ENTITY % local.imagedata.attrib "">
            <!ENTITY % imagedata.role.attrib "%role.attrib;">

            <!ENTITY % imagedata.element "INCLUDE">
            <![ %imagedata.element; [
                <!--doc:Pointer to external image data.-->
                <!ELEMENT imagedata EMPTY>
                <!--end of imagedata.element-->]]>

            <!ENTITY % imagedata.attlist "INCLUDE">
            <![ %imagedata.attlist; [

                <!--Width: Same as CALS reprowid (desired width)-->
                <!--Depth: Same as CALS reprodep (desired depth)-->
                <!--Align: Same as CALS hplace with 'none' removed; #IMPLIED means
                  application-specific-->
                <!--Scale: Conflation of CALS hscale and vscale-->
                <!--Scalefit: Same as CALS scalefit-->
                <!ATTLIST imagedata
                    width    CDATA    #IMPLIED
                    contentwidth  CDATA    #IMPLIED
                    depth    CDATA    #IMPLIED
                    contentdepth  CDATA    #IMPLIED
                    align    (left
                        |right
                        |center)  #IMPLIED
                    valign    (top
                        |middle
                        |bottom)  #IMPLIED
                    scale    CDATA    #IMPLIED
                    scalefit  %yesorno.attvals;
                        #IMPLIED
                    %objectdata.attrib;
                    %common.attrib;
                    %imagedata.role.attrib;
                    %local.imagedata.attrib;
                    >
                <!--end of imagedata.attlist-->]]>
            <!--end of imagedata.module-->]]>

        <!ENTITY % mediaobjectco.module "INCLUDE">
        <![ %mediaobjectco.module; [
            <!ENTITY % local.mediaobjectco.attrib "">
            <!ENTITY % mediaobjectco.role.attrib "%role.attrib;">

            <!ENTITY % mediaobjectco.element "INCLUDE">
            <![ %mediaobjectco.element; [
                <!--doc:A media object that contains callouts.-->
                <!ELEMENT mediaobjectco (imageobjectco,
                    (imageobjectco|textobject)*)>
                <!--end of mediaobjectco.element-->]]>

            <!ENTITY % mediaobjectco.attlist "INCLUDE">
            <![ %mediaobjectco.attlist; [
                <!ATTLIST mediaobjectco
                    %common.attrib;
                    %mediaobjectco.role.attrib;
                    %local.mediaobjectco.attrib;
                    >
                <!--end of mediaobjectco.attlist-->]]>
            <!--end of mediaobjectco.module-->]]>

        <!ENTITY % imageobjectco.module "INCLUDE">
        <![ %imageobjectco.module; [
            <!ENTITY % local.imageobjectco.attrib "">
            <!ENTITY % imageobjectco.role.attrib "%role.attrib;">

            <!ENTITY % imageobjectco.element "INCLUDE">
            <![ %imageobjectco.element; [
                <!--doc:A wrapper for an image object with callouts.-->
                <!ELEMENT imageobjectco (areaspec, imageobject, calloutlist*)>
                <!--end of imageobjectco.element-->]]>

            <!ENTITY % imageobjectco.attlist "INCLUDE">
            <![ %imageobjectco.attlist; [
                <!ATTLIST imageobjectco
                    %common.attrib;
                    %imageobjectco.role.attrib;
                    %local.imageobjectco.attrib;
                    >
                <!--end of imageobjectco.attlist-->]]>
            <!--end of imageobjectco.module-->]]>
        <!--end of mediaobject.content.module-->]]>

    <!-- Equations ........................ -->

    <!-- Tables ........................... -->

    <!ENTITY % table.module "INCLUDE">
    <![%table.module;[

        <!-- Choose a table model. CALS or OASIS XML Exchange -->

        <!ENTITY % cals.table.module "INCLUDE">
        <![%cals.table.module;[
            <!ENTITY % exchange.table.module "IGNORE">
            ]]>
        <!ENTITY % exchange.table.module "INCLUDE">

        <!-- Do we allow the HTML table model as well? -->
        <!ENTITY % allow.html.tables "INCLUDE">
        <![%allow.html.tables;[
            <!-- ====================================================== -->
            <!--  xhtmltbl.mod defines HTML tables and sets parameter
                  entities so that, when the CALS table module is read,
                  we end up allowing any table to be CALS or HTML.
                  i.e. This include must come first!                    -->
            <!-- ====================================================== -->

            <!ENTITY % htmltbl
                PUBLIC "-//OASIS//ELEMENTS DocBook XML HTML Tables V4.5//EN"
                "htmltblx.mod">
            %htmltbl;
            <!--end of allow.html.tables-->]]>

        <!ENTITY % tables.role.attrib "%role.attrib;">

        <![%cals.table.module;[
            <!-- Add label and role attributes to table -->
            <!ENTITY % bodyatt "
		floatstyle	CDATA			#IMPLIED
		rowheader	(firstcol|norowheader)	#IMPLIED
                %label.attrib;"
                >

            <!-- Add common attributes to Table, TGroup, TBody, THead, TFoot, Row,
                 EntryTbl, and Entry (and InformalTable element). -->
            <!ENTITY % secur
                "%common.attrib;
	%tables.role.attrib;">

            <!ENTITY % common.table.attribs
                "%bodyatt;
	%secur;">

            <!-- Content model for Table. -->
            <!ENTITY % tbl.table.mdl
                "((%formalobject.title.content;)?, textobject*,
          (mediaobject+|tgroup+))">

            <!-- Allow either objects or inlines; beware of REs between elements. -->
            <!ENTITY % tbl.entry.mdl "%para.char.mix; | %tabentry.mix;">

            <!-- Reference CALS Table Model -->

            <!ENTITY % tablemodel
                PUBLIC "-//OASIS//DTD DocBook CALS Table Model V4.5//EN"
                "calstblx.dtd">
            ]]>

        <![%exchange.table.module;[
            <!-- Add common attributes and the Label attribute to Table and -->
            <!-- InformalTable.                                             -->
            <!ENTITY % bodyatt
                "%common.attrib;
	rowheader	(firstcol|norowheader)	#IMPLIED
	%label.attrib;
	%tables.role.attrib;">

            <!ENTITY % common.table.attribs
                "%bodyatt;">

            <!-- Add common attributes to TGroup, ColSpec, TBody, THead, Row, Entry -->

            <!ENTITY % tbl.tgroup.att       "%common.attrib;">
            <!ENTITY % tbl.colspec.att      "%common.attrib;">
            <!ENTITY % tbl.tbody.att        "%common.attrib;">
            <!ENTITY % tbl.thead.att        "%common.attrib;">
            <!ENTITY % tbl.row.att          "%common.attrib;">
            <!ENTITY % tbl.entry.att        "%common.attrib;">

            <!-- Content model for Table. -->
            <!ENTITY % tbl.table.mdl
                "((%formalobject.title.content;)?, textobject*,
          (mediaobject+|tgroup+))">

            <!-- Allow either objects or inlines; beware of REs between elements. -->
            <!ENTITY % tbl.entry.mdl "(%para.char.mix; | %tabentry.mix;)*">

            ]]>

        %tablemodel;

        <!--end of table.module-->]]>

<!ENTITY % caption.module "INCLUDE">
<![ %caption.module; [
<!ENTITY % local.caption.attrib "">
<!ENTITY % caption.role.attrib "%role.attrib;">

<!ENTITY % caption.element "INCLUDE">
<![ %caption.element; [
<!--doc:A caption.-->
<!ELEMENT caption (#PCDATA | %textobject.mix;)*>
<!--end of caption.element-->]]>

<!ENTITY % caption.attlist "INCLUDE">
<![ %caption.attlist; [
<!-- attrs comes from HTML tables ... -->

<![ %allow.html.tables; [
<!-- common.attrib, but without ID because ID is in attrs -->
<!ENTITY % caption.attlist.content "
		%caption.role.attrib;
		%attrs;
		align	(top|bottom|left|right)	#IMPLIED
		%local.caption.attrib;
">
]]>
<!ENTITY % caption.attlist.content "
		%common.attrib;
		%caption.role.attrib;
		%local.caption.attrib;
">

<!ATTLIST caption %caption.attlist.content;>

<!--end of caption.attlist-->]]>
<!--end of caption.module-->]]>

    <!-- ...................................................................... -->
    <!-- Document information entities and elements ........................... -->

    <!-- The document information elements include some elements that are
         currently used only in the document hierarchy module. They are
         defined here so that they will be available for use in customized
         document hierarchies. -->

    <!-- .................................. -->

    <!ENTITY % docinfo.content.module "INCLUDE">
    <![%docinfo.content.module;[

        <!-- Edition .......................... -->

        <!ENTITY % edition.module "INCLUDE">
        <![%edition.module;[
            <!ENTITY % local.edition.attrib "">
            <!ENTITY % edition.role.attrib "%role.attrib;">

            <!ENTITY % edition.element "INCLUDE">
            <![%edition.element;[
                <!--doc:The name or number of an edition of a document.-->
                <!ELEMENT edition (%docinfo.char.mix;)*>
                <!--end of edition.element-->]]>

            <!ENTITY % edition.attlist "INCLUDE">
            <![%edition.attlist;[
                <!ATTLIST edition
                    %common.attrib;
                    %edition.role.attrib;
                    %local.edition.attrib;
                    >
                <!--end of edition.attlist-->]]>
            <!--end of edition.module-->]]>

        <!--end of docinfo.content.module-->]]>

    <!-- ...................................................................... -->
    <!-- Inline, link, and ubiquitous elements ................................ -->

    <!-- Technical and computer terms ......................................... -->

    <!ENTITY % co.module "INCLUDE">
    <![%co.module;[
        <!ENTITY % local.co.attrib "">
        <!-- CO is a callout area of the LineColumn unit type (a single character
             position); the position is directly indicated by the location of CO. -->
        <!ENTITY % co.role.attrib "%role.attrib;">

        <!ENTITY % co.element "INCLUDE">
        <![%co.element;[
            <!--doc:The location of a callout embedded in text.-->
            <!ELEMENT co EMPTY>
            <!--end of co.element-->]]>

        <!-- bug number/symbol override or initialization -->
        <!-- to any related information -->


        <!ENTITY % co.attlist "INCLUDE">
        <![%co.attlist;[
            <!ATTLIST co
                %label.attrib;
                %linkends.attrib;
                %idreq.common.attrib;
                %co.role.attrib;
                %local.co.attrib;
                >
            <!--end of co.attlist-->]]>
        <!--end of co.module-->]]>

    <!ENTITY % command.module "INCLUDE">
    <![%command.module;[
        <!ENTITY % local.command.attrib "">
        <!ENTITY % command.role.attrib "%role.attrib;">

        <!ENTITY % command.element "INCLUDE">
        <![%command.element;[
            <!--doc:The name of an executable program or other software command.-->
            <!ELEMENT command (%cptr.char.mix;)*>
            <!--end of command.element-->]]>

        <!ENTITY % command.attlist "INCLUDE">
        <![%command.attlist;[
            <!ATTLIST command
                %common.attrib;
                %command.role.attrib;
                %local.command.attrib;
                >
            <!--end of command.attlist-->]]>
        <!--end of command.module-->]]>

    <!ENTITY % email.module "INCLUDE">
    <![%email.module;[
        <!ENTITY % local.email.attrib "">
        <!ENTITY % email.role.attrib "%role.attrib;">

        <!ENTITY % email.element "INCLUDE">
        <![%email.element;[
            <!--doc:An email address.-->
            <!ELEMENT email (%docinfo.char.mix;)*>
            <!--end of email.element-->]]>

        <!ENTITY % email.attlist "INCLUDE">
        <![%email.attlist;[
            <!ATTLIST email
                %common.attrib;
                %email.role.attrib;
                %local.email.attrib;
                >
            <!--end of email.attlist-->]]>
        <!--end of email.module-->]]>

    <!ENTITY % filename.module "INCLUDE">
    <![%filename.module;[
        <!ENTITY % local.filename.attrib "">
        <!ENTITY % filename.role.attrib "%role.attrib;">

        <!ENTITY % filename.element "INCLUDE">
        <![%filename.element;[
            <!--doc:The name of a file.-->
            <!ELEMENT filename (%cptr.char.mix;)*>
            <!--end of filename.element-->]]>

        <!-- Class: Type of filename the element names; no default -->
        <!-- Path: Search path (possibly system-specific) in which
            file can be found -->


        <!ENTITY % filename.attlist "INCLUDE">
        <![%filename.attlist;[
            <!ATTLIST filename
                class    (headerfile
                    |partition
                    |devicefile
                    |libraryfile
                    |directory
                    |extension
                    |symlink)       #IMPLIED
                path    CDATA    #IMPLIED
                %common.attrib;
                %filename.role.attrib;
                %local.filename.attrib;
                >
            <!--end of filename.attlist-->]]>
        <!--end of filename.module-->]]>

    <!ENTITY % guilabel.module "INCLUDE">
    <![%guilabel.module;[
        <!ENTITY % local.guilabel.attrib "">
        <!ENTITY % guilabel.role.attrib "%role.attrib;">

        <!ENTITY % guilabel.element "INCLUDE">
        <![%guilabel.element;[
            <!--doc:The text of a label in a GUI.-->
            <!ELEMENT guilabel (%smallcptr.char.mix;|superscript|subscript)*>
            <!--end of guilabel.element-->]]>

        <!ENTITY % guilabel.attlist "INCLUDE">
        <![%guilabel.attlist;[
            <!ATTLIST guilabel
                %common.attrib;
                %guilabel.role.attrib;
                %local.guilabel.attrib;
                >
            <!--end of guilabel.attlist-->]]>
        <!--end of guilabel.module-->]]>

    <!ENTITY % code.module "INCLUDE">
    <![%code.module;[
        <!ENTITY % local.code.attrib "">
        <!ENTITY % code.role.attrib "%role.attrib;">

        <!ENTITY % code.element "INCLUDE">
        <![%code.element;[
            <!--doc:An inline code fragment.-->
            <!ELEMENT code (%cptr.char.mix;)*>
            <!--end of code.element-->]]>

        <!ENTITY % code.attlist "INCLUDE">
        <![%code.attlist;[
            <!ATTLIST code
                language  CDATA  #IMPLIED
                %common.attrib;
                %code.role.attrib;
                %local.code.attrib;
                >
            <!--end of code.attlist-->]]>
        <!--end of code.module-->]]>

    <!ENTITY % replaceable.module "INCLUDE">
    <![%replaceable.module;[
        <!ENTITY % local.replaceable.attrib "">
        <!ENTITY % replaceable.role.attrib "%role.attrib;">

        <!ENTITY % replaceable.element "INCLUDE">
        <![%replaceable.element;[
            <!--doc:Content that may or must be replaced by the user.-->
            <!ELEMENT replaceable (#PCDATA
                | %link.char.class;
                | %base.char.class;
                | %other.char.class;
                | inlinemediaobject
                | co)*>
            <!--end of replaceable.element-->]]>

        <!-- Class: Type of information the element represents; no
            default -->


        <!ENTITY % replaceable.attlist "INCLUDE">
        <![%replaceable.attlist;[
            <!ATTLIST replaceable
                class    (command
                    |function
                    |option)  #IMPLIED
                %common.attrib;
                %replaceable.role.attrib;
                %local.replaceable.attrib;
                >
            <!--end of replaceable.attlist-->]]>
        <!--end of replaceable.module-->]]>

    <!ENTITY % userinput.module "INCLUDE">
    <![%userinput.module;[
        <!ENTITY % local.userinput.attrib "">
        <!ENTITY % userinput.role.attrib "%role.attrib;">

        <!ENTITY % userinput.element "INCLUDE">
        <![%userinput.element;[
            <!--doc:Data entered by the user.-->
            <!ELEMENT userinput (%cptr.char.mix;|co)*>
            <!--end of userinput.element-->]]>

        <!ENTITY % userinput.attlist "INCLUDE">
        <![%userinput.attlist;[
            <!ATTLIST userinput
                %common.attrib;
                %userinput.role.attrib;
                %local.userinput.attrib;
                >
            <!--end of userinput.attlist-->]]>
        <!--end of userinput.module-->]]>

    <!-- General words and phrases ............................................ -->

    <!ENTITY % emphasis.module "INCLUDE">
    <![%emphasis.module;[
        <!ENTITY % local.emphasis.attrib "">
        <!ENTITY % emphasis.role.attrib "%role.attrib;">

        <!ENTITY % emphasis.element "INCLUDE">
        <![%emphasis.element;[
            <!--doc:Emphasized text.-->
            <!ELEMENT emphasis (%para.char.mix;)*>
            <!--end of emphasis.element-->]]>

        <!ENTITY % emphasis.attlist "INCLUDE">
        <![%emphasis.attlist;[
            <!ATTLIST emphasis
                %common.attrib;
                %emphasis.role.attrib;
                %local.emphasis.attrib;
                >
            <!--end of emphasis.attlist-->]]>
        <!--end of emphasis.module-->]]>

    <!ENTITY % glossterm.module "INCLUDE">
    <![%glossterm.module;[
        <!ENTITY % local.glossterm.attrib "">
        <!ENTITY % glossterm.role.attrib "%role.attrib;">

        <!ENTITY % glossterm.element "INCLUDE">
        <![%glossterm.element;[
            <!--doc:A glossary term.-->
            <!ELEMENT glossterm (%para.char.mix;)*
                %glossterm.exclusion;>
            <!--end of glossterm.element-->]]>

        <!-- to GlossEntry if Glossterm used in text -->
        <!-- BaseForm: Provides the form of GlossTerm to be used
            for indexing -->

        <!ENTITY % glossterm.attlist "INCLUDE">
        <![%glossterm.attlist;[
            <!ATTLIST glossterm
                baseform  CDATA    #IMPLIED
                %linkend.attrib;
                %common.attrib;
                %glossterm.role.attrib;
                %local.glossterm.attrib;
                >
            <!--end of glossterm.attlist-->]]>
        <!--end of glossterm.module-->]]>

    <!ENTITY % phrase.module "INCLUDE">
    <![%phrase.module;[
        <!ENTITY % local.phrase.attrib "">
        <!ENTITY % phrase.role.attrib "%role.attrib;">

        <!ENTITY % phrase.element "INCLUDE">
        <![%phrase.element;[
            <!--doc:A span of text.-->
            <!ELEMENT phrase (%para.char.mix;)*>
            <!--end of phrase.element-->]]>

        <!ENTITY % phrase.attlist "INCLUDE">
        <![%phrase.attlist;[
            <!ATTLIST phrase
                %common.attrib;
                %phrase.role.attrib;
                %local.phrase.attrib;
                >
            <!--end of phrase.attlist-->]]>
        <!--end of phrase.module-->]]>

    <!-- Links and cross-references ........................................... -->

    <!ENTITY % link.module "INCLUDE">
    <![%link.module;[
        <!ENTITY % local.link.attrib "">
        <!ENTITY % link.role.attrib "%role.attrib;">

        <!ENTITY % link.element "INCLUDE">
        <![%link.element;[
            <!--doc:A hypertext link.-->
            <!ELEMENT link (%para.char.mix;)*
                %links.exclusion;>
            <!--end of link.element-->]]>

        <!-- Endterm: ID of element containing text that is to be
            fetched from elsewhere in the document to appear as
            the content of this element -->
        <!-- to linked-to object -->
        <!-- Type: Freely assignable parameter -->

        <!-- ZonBook uses NMTOKEN instead of IDREF to reduce noise about IDs not defined in current file -->
        <!ENTITY % link.attlist "INCLUDE">
        <![%link.attlist;[
            <!ATTLIST link
                endterm    NMTOKEN    #IMPLIED
                xrefstyle  CDATA    #IMPLIED
                type    CDATA    #IMPLIED
                %linkendreq.attrib;
                %common.attrib;
                %link.role.attrib;
                %local.link.attrib;
                >
            <!--end of link.attlist-->]]>
        <!--end of link.module-->]]>

    <!ENTITY % ulink.module "INCLUDE">
    <![%ulink.module;[
        <!ENTITY % local.ulink.attrib "">
        <!ENTITY % ulink.role.attrib "%role.attrib;">

        <!ENTITY % ulink.element "INCLUDE">
        <![%ulink.element;[
            <!--doc:A link that addresses its target by means of a URL (Uniform Resource Locator).-->
            <!ELEMENT ulink (%para.char.mix;)*
                %links.exclusion;>
            <!--end of ulink.element-->]]>

        <!-- URL: uniform resource locator; the target of the ULink -->
        <!-- Type: Freely assignable parameter -->


        <!ENTITY % ulink.attlist "INCLUDE">
        <![%ulink.attlist;[
            <!ATTLIST ulink
                url       CDATA       #REQUIRED
                type      (unchecked) #IMPLIED
                xrefstyle CDATA       #IMPLIED
                %common.attrib;
                %ulink.role.attrib;
                %local.ulink.attrib;
                >
            <!--end of ulink.attlist-->]]>
        <!--end of ulink.module-->]]>

    <!ENTITY % xref.module "INCLUDE">
    <![%xref.module;[
        <!ENTITY % local.xref.attrib "">
        <!ENTITY % xref.role.attrib "%role.attrib;">

        <!ENTITY % xref.element "INCLUDE">
        <![%xref.element;[
            <!--doc:A cross reference to another part of the document.-->
            <!ELEMENT xref EMPTY>
            <!--end of xref.element-->]]>

        <!-- Endterm: ID of element containing text that is to be
            fetched from elsewhere in the document to appear as
            the content of this element -->
        <!-- to linked-to object -->

        <!-- ZonBook uses NMTOKEN instead of IDREF to reduce noise about IDs not defined in current file -->
        <!ENTITY % xref.attlist "INCLUDE">
        <![%xref.attlist;[
            <!ATTLIST xref
                endterm    NMTOKEN    #IMPLIED
                xrefstyle  CDATA    #IMPLIED
                %common.attrib;
                %linkendreq.attrib;
                %xref.role.attrib;
                %local.xref.attrib;
                >
            <!--end of xref.attlist-->]]>
        <!--end of xref.module-->]]>

    <!-- Ubiquitous elements .................................................. -->

    <!ENTITY % anchor.module "INCLUDE">
    <![%anchor.module;[
        <!ENTITY % local.anchor.attrib "">
        <!ENTITY % anchor.role.attrib "%role.attrib;">

        <!ENTITY % anchor.element "INCLUDE">
        <![%anchor.element;[
            <!--doc:A spot in the document.-->
            <!ELEMENT anchor EMPTY>
            <!--end of anchor.element-->]]>

        <!-- required -->
        <!-- replaces Lang -->


        <!ENTITY % anchor.attlist "INCLUDE">
        <![%anchor.attlist;[
            <!ATTLIST anchor
                %idreq.attrib;    %pagenum.attrib;    %remap.attrib;
                %xreflabel.attrib;
                %region.attrib;
                %buildtype.attrib;
                %revisionflag.attrib;
                %effectivity.attrib;
                %anchor.role.attrib;
                %local.anchor.attrib;
                >
            <!--end of anchor.attlist-->]]>
        <!--end of anchor.module-->]]>

    <!ENTITY % keywordset.content.module "INCLUDE">
    <![%keywordset.content.module;[
        <!ENTITY % keywordset.module "INCLUDE">
        <![%keywordset.module;[
            <!ENTITY % local.keywordset.attrib "">
            <!ENTITY % keywordset.role.attrib "%role.attrib;">

            <!ENTITY % keywordset.element "INCLUDE">
            <![%keywordset.element;[
                <!--doc:A set of keywords describing the content of a document.-->
                <!ELEMENT keywordset (keyword+)>
                <!--end of keywordset.element-->]]>

            <!ENTITY % keywordset.attlist "INCLUDE">
            <![%keywordset.attlist;[
                <!ATTLIST keywordset
                    %common.attrib;
                    %keywordset.role.attrib;
                    %local.keywordset.attrib;
                    >
                <!--end of keywordset.attlist-->]]>
            <!--end of keywordset.module-->]]>

        <!ENTITY % keyword.module "INCLUDE">
        <![%keyword.module;[
            <!ENTITY % local.keyword.attrib "">
            <!ENTITY % keyword.role.attrib "%role.attrib;">

            <!ENTITY % keyword.element "INCLUDE">
            <![%keyword.element;[
                <!--doc:One of a set of keywords describing the content of a document.-->
                <!ELEMENT keyword (#PCDATA)>
                <!--end of keyword.element-->]]>

            <!ENTITY % keyword.attlist "INCLUDE">
            <![%keyword.attlist;[
                <!ATTLIST keyword
                    %common.attrib;
                    %keyword.role.attrib;
                    %local.keyword.attrib;
                    >
                <!--end of keyword.attlist-->]]>
            <!--end of keyword.module-->]]>
        <!--end of keywordset.content.module-->]]>

    <!-- Copyright ........................ -->

    <!ENTITY % copyright.content.module "INCLUDE">
    <![%copyright.content.module;[
        <!ENTITY % copyright.module "INCLUDE">
        <![%copyright.module;[
            <!ENTITY % local.copyright.attrib "">
            <!ENTITY % copyright.role.attrib "%role.attrib;">

            <!ENTITY % copyright.element "INCLUDE">
            <![%copyright.element;[
                <!--doc:Copyright information about a document.-->
                <!ELEMENT copyright (year+, holder*)>
                <!--end of copyright.element-->]]>

            <!ENTITY % copyright.attlist "INCLUDE">
            <![%copyright.attlist;[
                <!ATTLIST copyright
                    %common.attrib;
                    %copyright.role.attrib;
                    %local.copyright.attrib;
                    >
                <!--end of copyright.attlist-->]]>
            <!--end of copyright.module-->]]>

        <!ENTITY % year.module "INCLUDE">
        <![%year.module;[
            <!ENTITY % local.year.attrib "">
            <!ENTITY % year.role.attrib "%role.attrib;">

            <!ENTITY % year.element "INCLUDE">
            <![%year.element;[
                <!--doc:The year of publication of a document.-->
                <!ELEMENT year (%docinfo.char.mix;)*>
                <!--end of year.element-->]]>

            <!ENTITY % year.attlist "INCLUDE">
            <![%year.attlist;[
                <!ATTLIST year
                    %common.attrib;
                    %year.role.attrib;
                    %local.year.attrib;
                    >
                <!--end of year.attlist-->]]>
            <!--end of year.module-->]]>

        <!ENTITY % holder.module "INCLUDE">
        <![%holder.module;[
            <!ENTITY % local.holder.attrib "">
            <!ENTITY % holder.role.attrib "%role.attrib;">

            <!ENTITY % holder.element "INCLUDE">
            <![%holder.element;[
                <!--doc:The name of the individual or organization that holds a copyright.-->
                <!ELEMENT holder (%docinfo.char.mix;)*>
                <!--end of holder.element-->]]>

            <!ENTITY % holder.attlist "INCLUDE">
            <![%holder.attlist;[
                <!ATTLIST holder
                    %common.attrib;
                    %holder.role.attrib;
                    %local.holder.attrib;
                    >
                <!--end of holder.attlist-->]]>
            <!--end of holder.module-->]]>
        <!--end of copyright.content.module-->]]>

    <!-- LegalNotice ...................... -->

    <!ENTITY % legalnotice.module "INCLUDE">
    <![%legalnotice.module;[
        <!ENTITY % local.legalnotice.attrib "">
        <!ENTITY % legalnotice.role.attrib "%role.attrib;">

        <!ENTITY % legalnotice.element "INCLUDE">
        <![%legalnotice.element;[
            <!--doc:A statement of legal obligations or requirements.-->
            <!ELEMENT legalnotice (title?, (%legalnotice.mix;)+)
                %formal.exclusion;>
            <!--end of legalnotice.element-->]]>

        <!ENTITY % legalnotice.attlist "INCLUDE">
        <![%legalnotice.attlist;[
            <!ATTLIST legalnotice
                %common.attrib;
                %legalnotice.role.attrib;
                %local.legalnotice.attrib;
                >
            <!--end of legalnotice.attlist-->]]>
        <!--end of legalnotice.module-->]]>

    <!-- CorpAuthor ....................... -->

    <!ENTITY % corpauthor.module "INCLUDE">
    <![%corpauthor.module;[
        <!ENTITY % local.corpauthor.attrib "">
        <!ENTITY % corpauthor.role.attrib "%role.attrib;">

        <!ENTITY % corpauthor.element "INCLUDE">
        <![%corpauthor.element;[
            <!--doc:A corporate author, as opposed to an individual.-->
            <!ELEMENT corpauthor (%docinfo.char.mix;)*>
            <!--end of corpauthor.element-->]]>

        <!ENTITY % corpauthor.attlist "INCLUDE">
        <![%corpauthor.attlist;[
            <!ATTLIST corpauthor
                %common.attrib;
                %corpauthor.role.attrib;
                %local.corpauthor.attrib;
                >
            <!--end of corpauthor.attlist-->]]>
        <!--end of corpauthor.module-->]]>

    <!-- Publisher ........................ -->

    <!ENTITY % publisher.content.module "INCLUDE">
    <![%publisher.content.module;[
        <!ENTITY % publisher.module "INCLUDE">
        <![%publisher.module;[
            <!ENTITY % local.publisher.attrib "">
            <!ENTITY % publisher.role.attrib "%role.attrib;">

            <!ENTITY % publisher.element "INCLUDE">
            <![%publisher.element;[
                <!--doc:The publisher of a document.-->
                <!ELEMENT publisher (publishername)>
                <!--end of publisher.element-->]]>

            <!ENTITY % publisher.attlist "INCLUDE">
            <![%publisher.attlist;[
                <!ATTLIST publisher
                    %common.attrib;
                    %publisher.role.attrib;
                    %local.publisher.attrib;
                    >
                <!--end of publisher.attlist-->]]>
            <!--end of publisher.module-->]]>

        <!ENTITY % publishername.module "INCLUDE">
        <![%publishername.module;[
            <!ENTITY % local.publishername.attrib "">
            <!ENTITY % publishername.role.attrib "%role.attrib;">

            <!ENTITY % publishername.element "INCLUDE">
            <![%publishername.element;[
                <!--doc:The name of the publisher of a document.-->
                <!ELEMENT publishername (%docinfo.char.mix;)*>
                <!--end of publishername.element-->]]>

            <!ENTITY % publishername.attlist "INCLUDE">
            <![%publishername.attlist;[
                <!ATTLIST publishername
                    %common.attrib;
                    %publishername.role.attrib;
                    %local.publishername.attrib;
                    >
                <!--end of publishername.attlist-->]]>
            <!--end of publishername.module-->]]>
        <!--end of publisher.content.module-->]]>

    <!-- ...................................................................... -->
    <!-- Entities for module inclusions ....................................... -->

    <!ENTITY % dbhier.redecl.module    "IGNORE">
    <!ENTITY % dbhier.redecl2.module  "IGNORE">

    <!-- ...................................................................... -->
    <!-- Entities for element classes ......................................... -->

    <!ENTITY % local.article.class "">
    <!ENTITY % article.class  "article %local.article.class;">

    <!ENTITY % local.book.class "">
    <!ENTITY % book.class    "book %local.book.class;">

    <!ENTITY % local.chapter.class "">
    <!ENTITY % chapter.class  "chapter %local.chapter.class;">

    <!ENTITY % local.refentry.class "">
    <!ENTITY % refentry.class  "refentry %local.refentry.class;">

    <!ENTITY % local.section.class "">
    <!ENTITY % section.class  "section %local.section.class;">

    <!ENTITY % local.nav.class "">
    <!ENTITY % nav.class    "toc|glossary
				%local.nav.class;">

    <!-- Redeclaration placeholder ............................................ -->

    <!-- For redeclaring entities that are declared after this point while
         retaining their references to the entities that are declared before
         this point -->

    <![%dbhier.redecl.module;[
        <!-- Defining rdbhier here makes some buggy XML parsers happy. -->
        <!ENTITY % rdbhier "">
        %rdbhier;
        <!--end of dbhier.redecl.module-->]]>

    <!-- ...................................................................... -->
    <!-- Entities for element mixtures ........................................ -->

    <!ENTITY % local.divcomponent.mix "">
    <!ENTITY % divcomponent.mix
        "%list.class;		|%admon.class;
		|%linespecific.class;
		|%para.class;		|%informal.class;
		|%formal.class;		|%compound.class;
		|%genobj.class;		|%descobj.class;
                %forms.hook;
		%local.divcomponent.mix;">

    <!ENTITY % local.refcomponent.mix "">
    <!ENTITY % refcomponent.mix
        "%list.class;		|%admon.class;
		|%linespecific.class;
		|%para.class;		|%informal.class;
		|%formal.class;		|%compound.class;
		|%genobj.class;		|%descobj.class;
		%forms.hook;
                %local.refcomponent.mix;">

    <!ENTITY % local.indexdivcomponent.mix "">
    <!ENTITY % indexdivcomponent.mix
        "itemizedlist|orderedlist|variablelist|tablist
		|%linespecific.class;
		|%para.class;		|%informal.class;
		|anchor|remark
		|%link.char.class;
		%local.indexdivcomponent.mix;">

    <!ENTITY % local.refname.char.mix "">
    <!ENTITY % refname.char.mix
        "#PCDATA
		|%tech.char.class;
		%local.refname.char.mix;">

    <!ENTITY % local.partcontent.mix "">
    <!ENTITY % partcontent.mix
        "%chapter.class;|%nav.class;|%article.class;
		|preface|%refentry.class;|reference %local.partcontent.mix;">

    <!ENTITY % local.refinline.char.mix "">
    <!ENTITY % refinline.char.mix
        "#PCDATA
		|%xref.char.class;	|%gen.char.class;
		|%link.char.class;	|%tech.char.class;
		|%base.char.class;
		|%other.char.class;
		%local.refinline.char.mix;">

    <!ENTITY % local.refclass.char.mix "">
    <!ENTITY % refclass.char.mix
        "#PCDATA
		%local.refclass.char.mix;">

    <!-- Redeclaration placeholder 2 .......................................... -->

    <!-- For redeclaring entities that are declared after this point while
         retaining their references to the entities that are declared before
         this point -->

    <![%dbhier.redecl2.module;[
        <!-- Defining rdbhier2 here makes some buggy XML parsers happy. -->
        <!ENTITY % rdbhier2 "">
        %rdbhier2;
        <!--end of dbhier.redecl2.module-->]]>

    <!-- ...................................................................... -->
    <!-- Entities for content models .......................................... -->

    <!ENTITY % div.title.content
        "title, subtitle?, titleabbrev?">

    <!ENTITY % bookcomponent.title.content
        "title, subtitle?, titleabbrev?">

    <!ENTITY % sect.title.content
        "title, subtitle?, titleabbrev?">

    <!ENTITY % refsect.title.content
        "title, subtitle?, titleabbrev?">

    <!ENTITY % bookcomponent.content
        "((%divcomponent.mix;|block)+,
	(sect1*|(%refentry.class;)*|(%section.class;)*))
	| (sect1+|(%refentry.class;)+|(%section.class;)+)">

    <!-- ...................................................................... -->
    <!-- Book and BookInfo .................................................... -->

    <!ENTITY % book.content.module "INCLUDE">
    <![%book.content.module;[
        <!ENTITY % book.module "INCLUDE">
        <![%book.module;[

            <!ENTITY % local.book.attrib "">
            <!ENTITY % book.role.attrib "%role.attrib;">

            <!ENTITY % book.element "INCLUDE">
            <![%book.element;[
                <!--doc:A book.-->
                <!ELEMENT book ((%div.title.content;)?, (info)?,
                    (toc | glossary | preface
                        | %chapter.class;
                        | %article.class;)*)
                    %ubiq.inclusion;>
                <!--end of book.element-->]]>

            <!-- FPI: SGML formal public identifier -->


            <!ENTITY % book.attlist "INCLUDE">
            <![%book.attlist;[
                <!ATTLIST book    fpi    CDATA    #IMPLIED
                    %label.attrib;
                    %status.attrib;
                    %common.attrib;
                    %book.role.attrib;
                    %local.book.attrib;
                    >
                <!--end of book.attlist-->]]>
            <!--end of book.module-->]]>

        <!--end of book.content.module-->]]>

    <!-- more-info-links ........................ -->
    <!ENTITY % more-info-links.module "INCLUDE">
    <![%more-info-links.module;[
        <!ENTITY % more-info-links.element "INCLUDE">
        <![%more-info-links.element;[
            <!--doc:Set of more information links for a book.-->
            <!ELEMENT more-info-links (ulink+)>
            <!--end of more-info-links.element-->]]>
        <!--end of more-info-links.module-->]]>

    <!-- ...................................................................... -->
    <!-- Chapter ............... -->

    <!ENTITY % chapter.module "INCLUDE">
    <![%chapter.module;[
        <!ENTITY % local.chapter.attrib "">
        <!ENTITY % chapter.role.attrib "%role.attrib;">

        <!ENTITY % chapter.element "INCLUDE">
        <![%chapter.element;[
            <!--doc:A chapter, as of a book.-->
            <!ELEMENT chapter ((info)?,
                (%bookcomponent.title.content;)?,
                (%nav.class;)*,
                (%bookcomponent.content;),
                (%nav.class;)*)
                %ubiq.inclusion;>
            <!--end of chapter.element-->]]>

        <!ENTITY % chapter.attlist "INCLUDE">
        <![%chapter.attlist;[
            <!ATTLIST chapter
                %label.attrib;
                %status.attrib;
                %common.attrib;
                %chapter.role.attrib;
                %local.chapter.attrib;
                >
            <!--end of chapter.attlist-->]]>
        <!--end of chapter.module-->]]>

    <!-- ...................................................................... -->
    <!-- Other Info elements .................................................. -->

    <!ENTITY % info.module "INCLUDE">
    <![ %info.module; [
        <!ENTITY % info.role.attrib "%role.attrib;">
        <!ENTITY % local.info.attrib "">

        <!ENTITY % info.element "INCLUDE">
        <![ %info.element; [
            <!--doc:Meta-information for a recursive section.-->
            <!ELEMENT info ((%info.class;)+, more-info-links?)>
            <!--end of info.element-->]]>

        <!ENTITY % info.attlist "INCLUDE">
        <![ %info.attlist; [
            <!ATTLIST info
                %common.attrib;
                %info.role.attrib;
                %local.info.attrib;
                >
            <!--end of info.attlist-->]]>
        <!--end of info.module-->]]>

    <!-- ...................................................................... -->
    <!-- Section ......................................... -->

    <!ENTITY % section.content.module "INCLUDE">
    <![ %section.content.module; [
        <!ENTITY % section.module "INCLUDE">
        <![ %section.module; [
            <!ENTITY % local.section.attrib "">
            <!ENTITY % section.role.attrib "%role.attrib;">

            <!ENTITY % section.element "INCLUDE">
            <![ %section.element; [
                <!--doc:A recursive section.-->
                <!ELEMENT section ((info)?,
                    (%sect.title.content;)?,
                    (%nav.class;)*,
                    (((%divcomponent.mix;|block)+,
                        ((%refentry.class;)*|(%section.class;)*))
                        | (%refentry.class;)+|(%section.class;)+),
                    (%nav.class;)*)
                    %ubiq.inclusion;>
                <!--end of section.element-->]]>

            <!ENTITY % section.attlist "INCLUDE">
            <![ %section.attlist; [
                <!ATTLIST section
                    %label.attrib;
                    %status.attrib;
                    %common.attrib;
                    %section.role.attrib;
                    %local.section.attrib;
                    >
                <!--end of section.attlist-->]]>
            <!--end of section.module-->]]>

        <!--end of section.content.module-->]]>

    <!-- ...................................................................... -->
    <!-- Glossary ............................................................. -->

    <!ENTITY % glossary.content.module "INCLUDE">
    <![%glossary.content.module;[
        <!ENTITY % glossary.module "INCLUDE">
        <![%glossary.module;[
            <!ENTITY % local.glossary.attrib "">
            <!ENTITY % glossary.role.attrib "%role.attrib;">

            <!ENTITY % glossary.element "INCLUDE">
            <![%glossary.element;[
                <!--doc:A glossary.-->
                <!ELEMENT glossary ((%bookcomponent.title.content;)?,
                    (%component.mix;)*,
                    (glossdiv+ | glossentry+))>
                <!--end of glossary.element-->]]>

            <!ENTITY % glossary.attlist "INCLUDE">
            <![%glossary.attlist;[
                <!ATTLIST glossary
                    %status.attrib;
                    %common.attrib;
                    %glossary.role.attrib;
                    %local.glossary.attrib;
                    >
                <!--end of glossary.attlist-->]]>
            <!--end of glossary.module-->]]>

        <!ENTITY % glossdiv.module "INCLUDE">
        <![%glossdiv.module;[
            <!ENTITY % local.glossdiv.attrib "">
            <!ENTITY % glossdiv.role.attrib "%role.attrib;">

            <!ENTITY % glossdiv.element "INCLUDE">
            <![%glossdiv.element;[
                <!--doc:A division in a Glossary.-->
                <!ELEMENT glossdiv ((%sect.title.content;), (%component.mix;)*,
                    glossentry+)>
                <!--end of glossdiv.element-->]]>

            <!ENTITY % glossdiv.attlist "INCLUDE">
            <![%glossdiv.attlist;[
                <!ATTLIST glossdiv
                    %status.attrib;
                    %common.attrib;
                    %glossdiv.role.attrib;
                    %local.glossdiv.attrib;
                    >
                <!--end of glossdiv.attlist-->]]>
            <!--end of glossdiv.module-->]]>
        <!--end of glossary.content.module-->]]>

    <!ENTITY % preface.module "INCLUDE">
    <![%preface.module;[
        <!ENTITY % local.preface.attrib "">
        <!ENTITY % preface.role.attrib "%role.attrib;">

        <!ENTITY % preface.element "INCLUDE">
        <![%preface.element;[
            <!--doc:Introductory matter preceding the first chapter of a book.-->
            <!ELEMENT preface ((%para.class;)?)>
            <!--end of preface.element-->]]>

        <!ENTITY % preface.attlist "INCLUDE">
        <![%preface.attlist;[
            <!ATTLIST preface
                %status.attrib;
                %common.attrib;
                %preface.role.attrib;
                %local.preface.attrib;
                >
            <!--end of preface.attlist-->]]>
        <!--end of preface.module-->]]>

    <!ENTITY % toc.module "INCLUDE">
    <![%toc.module;[
        <!ENTITY % local.toc.attrib "">
        <!ENTITY % toc.role.attrib "%role.attrib;">

        <!ENTITY % toc.element "INCLUDE">
        <![%toc.element;[
            <!--doc:A table of contents.-->
            <!ELEMENT toc ((%bookcomponent.title.content;)?)>
            <!--end of toc.element-->]]>

        <!ENTITY % toc.attlist "INCLUDE">
        <![%toc.attlist;[
            <!ATTLIST toc
                %toc.role.attrib;
                %local.toc.attrib;
                >
            <!--end of toc.attlist-->]]>
        <!--end of toc.module-->]]>

    <!ENTITY % screen.module "INCLUDE">
    <![%screen.module;[
        <!ENTITY % local.screen.attrib "">
        <!ENTITY % screen.role.attrib "%role.attrib;">

        <!ENTITY % screen.element "INCLUDE">
        <![%screen.element;[
            <!--doc:Text that a user sees or might see on a computer screen.-->
            <!ELEMENT screen (%para.char.mix;|co|textobject)*>
            <!--end of screen.element-->]]>

        <!ENTITY % screen.attlist "INCLUDE">
        <![%screen.attlist;[
            <!ATTLIST screen
                %width.attrib;
                language       CDATA   #IMPLIED
                %common.attrib;
                %screen.role.attrib;
                %local.screen.attrib;
                >
            <!--end of screen.attlist-->]]>
        <!--end of screen.module-->]]>

    <!ENTITY % prompt.module "INCLUDE">
    <![%prompt.module;[
        <!ENTITY % local.prompt.attrib "">
        <!ENTITY % prompt.role.attrib "%role.attrib;">

        <!ENTITY % prompt.element "INCLUDE">
        <![%prompt.element;[
            <!--doc:A character or string indicating the start of an input field in a  computer display.-->
            <!ELEMENT prompt (%smallcptr.char.mix;|co)*>
            <!--end of prompt.element-->]]>

        <!ENTITY % prompt.attlist "INCLUDE">
        <![%prompt.attlist;[
            <!ATTLIST prompt
                %common.attrib;
                %prompt.role.attrib;
                %local.prompt.attrib;
                >
            <!--end of prompt.attlist-->]]>
        <!--end of prompt.module-->]]>

    <!ENTITY % computeroutput.module "INCLUDE">
    <![%computeroutput.module;[
        <!ENTITY % local.computeroutput.attrib "">
        <!ENTITY % computeroutput.role.attrib "%role.attrib;">

        <!ENTITY % computeroutput.element "INCLUDE">
        <![%computeroutput.element;[
            <!--doc:Data, generally text, displayed or presented by a computer.-->
            <!ELEMENT computeroutput (%cptr.char.mix;|co)*>
            <!--end of computeroutput.element-->]]>

        <!ENTITY % computeroutput.attlist "INCLUDE">
        <![%computeroutput.attlist;[
            <!ATTLIST computeroutput
                %common.attrib;
                %computeroutput.role.attrib;
                %local.computeroutput.attrib;
                >
            <!--end of computeroutput.attlist-->]]>
        <!--end of computeroutput.module-->]]>

    <!ENTITY % errortext.module "INCLUDE">
    <![%errortext.module;[
        <!ENTITY % local.errortext.attrib "">
        <!ENTITY % errortext.role.attrib "%role.attrib;">

        <!ENTITY % errortext.element "INCLUDE">
        <![%errortext.element;[
            <!--doc:An error message..-->
            <!ELEMENT errortext (%smallcptr.char.mix;)*>
            <!--end of errortext.element-->]]>

        <!ENTITY % errortext.attlist "INCLUDE">
        <![%errortext.attlist;[
            <!ATTLIST errortext
                %common.attrib;
                %errortext.role.attrib;
                %local.errortext.attrib;
                >
            <!--end of errortext.attlist-->]]>
        <!--end of errortext.module-->]]>

    <!ENTITY % ssscript.module "INCLUDE">
    <![%ssscript.module;[
        <!ENTITY % local.ssscript.attrib "">
        <!ENTITY % ssscript.role.attrib "%role.attrib;">

        <!ENTITY % subscript.element "INCLUDE">
        <![%subscript.element;[
            <!--doc:A subscript (as in H{^2}O, the molecular formula for water).-->
            <!ELEMENT subscript (#PCDATA
                | %link.char.class;
                | emphasis
                | replaceable
                | inlinemediaobject
                | %base.char.class;
                | %other.char.class;)*
                %ubiq.exclusion;>
            <!--end of subscript.element-->]]>

        <!ENTITY % subscript.attlist "INCLUDE">
        <![%subscript.attlist;[
            <!ATTLIST subscript
                %common.attrib;
                %ssscript.role.attrib;
                %local.ssscript.attrib;
                >
            <!--end of subscript.attlist-->]]>

        <!ENTITY % superscript.element "INCLUDE">
        <![%superscript.element;[
            <!--doc:A superscript (as in x^2, the mathematical notation for x multiplied by itself).-->
            <!ELEMENT superscript (#PCDATA
                | %link.char.class;
                | emphasis
                | replaceable
                | inlinemediaobject
                | %base.char.class;
                | %other.char.class;)*
                %ubiq.exclusion;>
            <!--end of superscript.element-->]]>

        <!ENTITY % superscript.attlist "INCLUDE">
        <![%superscript.attlist;[
            <!ATTLIST superscript
                %common.attrib;
                %ssscript.role.attrib;
                %local.ssscript.attrib;
                >
            <!--end of superscript.attlist-->]]>
        <!--end of ssscript.module-->]]>

    <!ENTITY % abbrev.module "INCLUDE">
    <![%abbrev.module;[
        <!ENTITY % local.abbrev.attrib "">
        <!ENTITY % abbrev.role.attrib "%role.attrib;">

        <!ENTITY % abbrev.element "INCLUDE">
        <![%abbrev.element;[
            <!--doc:An abbreviation, especially one followed by a period.-->
            <!ELEMENT abbrev (%word.char.mix;)*>
            <!--end of abbrev.element-->]]>

        <!ENTITY % abbrev.attlist "INCLUDE">
        <![%abbrev.attlist;[
            <!ATTLIST abbrev
                %common.attrib;
                %abbrev.role.attrib;
                %local.abbrev.attrib;
                >
            <!--end of abbrev.attlist-->]]>
        <!--end of abbrev.module-->]]>

    <!-- TabList ..................... -->

    <!ENTITY % tablist.content.module "INCLUDE">
    <![%tablist.content.module;[
        <!ENTITY % tablist.module "INCLUDE">
        <![%tablist.module;[
            <!ENTITY % local.tablist.attrib "">
            <!ENTITY % tablist.role.attrib "%role.attrib;">

            <!ENTITY % tablist.element "INCLUDE">
            <![%tablist.element;[
                <!--doc:A list in which each entry is composed of a set of one or more terms and an associated description.-->
                <!ELEMENT tablist (tablistentry+)>
                <!--end of tablist.element-->]]>

            <!-- TermLength: Length beyond which the presentation engine
                may consider the Term too long and select an alternate
                presentation of the Term and, or, its associated ListItem. -->


            <!ENTITY % tablist.attlist "INCLUDE">
            <![%tablist.attlist;[
                <!ATTLIST tablist
                    termlength  CDATA    #IMPLIED
                    spacing    (normal
                        |compact)  #IMPLIED
                    %common.attrib;
                    %tablist.role.attrib;
                    %local.tablist.attrib;
                    >
                <!--end of tablist.attlist-->]]>
            <!--end of tablist.module-->]]>

        <!ENTITY % tablistentry.module "INCLUDE">
        <![%tablistentry.module;[
            <!ENTITY % local.tablistentry.attrib "">
            <!ENTITY % tablistentry.role.attrib "%role.attrib;">

            <!ENTITY % tablistentry.element "INCLUDE">
            <![%tablistentry.element;[
                <!--doc:A wrapper for a set of terms and the associated description in a variable list.-->
                <!ELEMENT tablistentry (tabname, tabcontent)>
                <!--end of tablistentry.element-->]]>

            <!ENTITY % tablistentry.attlist "INCLUDE">
            <![%tablistentry.attlist;[
                <!ATTLIST tablistentry
                    %common.attrib;
                    %tablistentry.role.attrib;
                    %local.tablistentry.attrib;
                    >
                <!--end of tablistentry.attlist-->]]>
            <!--end of tablistentry.module-->]]>

        <!ENTITY % tabname.module "INCLUDE">
        <![%tabname.module;[
            <!ENTITY % local.tabname.attrib "">
            <!ENTITY % tabname.role.attrib "%role.attrib;">

            <!ENTITY % tabname.element "INCLUDE">
            <![%tabname.element;[
                <!ELEMENT tabname (#PCDATA)*>
                <!--end of tabname.element-->]]>

            <!ENTITY % tabname.attlist "INCLUDE">
            <![%tabname.attlist;[
                <!ATTLIST tabname>
                <!--end of tabname.attlist-->]]>
            <!--end of tabname.module-->]]>

        <!ENTITY % tabcontent.module "INCLUDE">
        <![%tabcontent.module;[
            <!ENTITY % local.tabcontent.attrib "">
            <!ENTITY % tabcontent.role.attrib "%role.attrib;">

            <!ENTITY % tabcontent.element "INCLUDE">
            <![%tabcontent.element;[
                <!ELEMENT tabcontent ((%component.mix;)+)>
                <!--end of tabcontent.element-->]]>

            <!ENTITY % tabcontent.attlist "INCLUDE">
            <![%tabcontent.attlist;[
                <!ATTLIST tabcontent
                    %common.attrib;
                    %tabcontent.role.attrib;
                    %local.tabname.attrib;
                    >
                <!--end of tabcontent.attlist-->]]>
            <!--end of tabcontent.module-->]]>

        <!-- ListItem (defined above)-->
        <!--end of tablist.content.module-->]]>

    <!-- ...................................................................... -->
    <!-- Block ......................................... -->

    <!ENTITY % block.content.module "INCLUDE">
    <![ %block.content.module; [
        <!ENTITY % block.module "INCLUDE">
        <![ %block.module; [
            <!ENTITY % local.block.attrib "">
            <!ENTITY % block.role.attrib "%role.attrib;">

            <!ENTITY % block.element "INCLUDE">
            <![ %block.element; [
                <!--doc:A recursive block.-->
                <!ELEMENT block ((%nav.class;)*,
                    (((%divcomponent.mix;)+,
                        ((%refentry.class;)*))
                        | (%refentry.class;)+),
                    (%nav.class;)*)
                    %ubiq.inclusion;>
                <!--end of block.element-->]]>

            <!ENTITY % block.attlist "INCLUDE">
            <![ %block.attlist; [
                <!ATTLIST block
                    %label.attrib;
                    %status.attrib;
                    %common.attrib;
                    %block.role.attrib;
                    %local.block.attrib;
                    >
                <!--end of block.attlist-->]]>
            <!--end of block.module-->]]>
        <!--end of block.content.module-->]]>

    <!-- ...................................................................... -->
    <!-- noloc ......................................... -->

    <!ENTITY % noloc.module "INCLUDE">
    <![%noloc.module;[
        <!ENTITY % local.noloc.attrib "">
        <!ENTITY % noloc.role.attrib "%role.attrib;">

        <!ENTITY % noloc.element "INCLUDE">
        <![%noloc.element;[
            <!--doc:Non-localized text.-->
            <!ELEMENT noloc (#PCDATA|link|ulink|emphasis)*>
            <!--end of noloc.element-->]]>

        <!ENTITY % noloc.attlist "INCLUDE">
        <![%noloc.attlist;[
            <!ATTLIST noloc>
            <!--end of noloc.attlist-->]]>
        <!--end of noloc.module-->]]>

    <!ENTITY % keycap.module "INCLUDE">
    <![%keycap.module;[
        <!ENTITY % local.keycap.attrib "">
        <!ENTITY % keycap.role.attrib "%role.attrib;">

        <!ENTITY % keycap.element "INCLUDE">
        <![%keycap.element;[
            <!--doc:The text printed on a key on a keyboard.-->
            <!ELEMENT keycap (%cptr.char.mix;)*>
            <!--end of keycap.element-->]]>

        <!ENTITY % keycap.attlist "INCLUDE">
        <![%keycap.attlist;[
            <!ATTLIST keycap
                function	(alt
                    |control
                    |shift
                    |meta
                    |escape
                    |enter
                    |tab
                    |backspace
                    |command
                    |option
                    |space
                    |delete
                    |insert
                    |up
                    |down
                    |left
                    |right
                    |home
                    |end
                    |pageup
                    |pagedown
                    |other)		#IMPLIED
                otherfunction	CDATA		#IMPLIED
                %common.attrib;
                %keycap.role.attrib;
                %local.keycap.attrib;
                >
            <!--end of keycap.attlist-->]]>
        <!--end of keycap.module-->]]>

    <!ENTITY % keycombo.module "INCLUDE">
    <![%keycombo.module;[
        <!ENTITY % local.keycombo.attrib "">
        <!ENTITY % keycombo.role.attrib "%role.attrib;">

        <!ENTITY % keycombo.element "INCLUDE">
        <![%keycombo.element;[
            <!--doc:A combination of input actions.-->
            <!ELEMENT keycombo ((keycap|keycombo)+)>
            <!--end of keycombo.element-->]]>

        <!ENTITY % keycombo.attlist "INCLUDE">
        <![%keycombo.attlist;[
            <!ATTLIST keycombo
                %common.attrib;
                %keycombo.role.attrib;
                %local.keycombo.attrib;
                >
            <!--end of keycombo.attlist-->]]>
        <!--end of keycombo.module-->]]>

    <!-- End of ZonBook module V4.5 ...................... -->
    <!-- ...................................................................... -->
