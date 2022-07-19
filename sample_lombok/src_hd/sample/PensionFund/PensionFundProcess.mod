[Ivy]
18215E9AA4DC3EF7 9.3.1 #module
>Proto >Proto Collection #zClass
Ps0 PensionFundProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @UdInit f0 '' #zField
Ps0 @UdProcessEnd f1 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @UdEvent f3 '' #zField
Ps0 @UdExitEnd f4 '' #zField
Ps0 @PushWFArc f5 '' #zField
>Proto Ps0 Ps0 PensionFundProcess #zField
Ps0 f0 guid 18215E9AA572647B #txt
Ps0 f0 method start(sample.Data) #txt
Ps0 f0 inParameterDecl '<sample.Data data> param;' #txt
Ps0 f0 inParameterMapAction 'out.data=param.data;
' #txt
Ps0 f0 outParameterDecl '<sample.Data data> result;' #txt
Ps0 f0 outParameterMapAction 'result.data=in.data;
' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Data)</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 83 51 26 26 -27 15 #rect
Ps0 f1 211 51 26 26 0 12 #rect
Ps0 f2 109 64 211 64 #arcP
Ps0 f3 guid 18215E9AA66E9B6E #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ps0 f3 83 147 26 26 -14 15 #rect
Ps0 f4 211 147 26 26 0 12 #rect
Ps0 f5 109 160 211 160 #arcP
>Proto Ps0 .type sample.PensionFund.PensionFundData #txt
>Proto Ps0 .processKind HTML_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f3 mainOut f5 tail #connect
Ps0 f5 head f4 mainIn #connect
