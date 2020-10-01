<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="class">
    <name>XF</name>
    <filename>class_x_f.html</filename>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>initialize</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>a6b8387b7e44c3f156e9177fca2bfeda5</anchor>
      <arglist>(int timeInterval=10, int argc=0, char *argv[]=nullptr)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>exec</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>adceb11187c82a325663b6de0a362bee3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>execOnce</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>abe030c9a50dd794a9f61eeaa60c67e06</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>isRunning</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>a8853f83a196b6d8aa0b98b76f7cd04c9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static bool</type>
      <name>_bInitialized</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>a21257b2677b4a7b23604b6f80cdcde70</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static bool</type>
      <name>_bIsRunning</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>aaeeab6db7a4256a29bea433a9b6531c2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFBehavior</name>
    <filename>class_x_f_behavior.html</filename>
    <base>interface::XFReactive</base>
    <member kind="function">
      <type></type>
      <name>XFBehavior</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a46bd020b4111097f99847f194565551e</anchor>
      <arglist>(bool ownDispatcher=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>startBehavior</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a84756f7e6fb88fc3efc4bc42b5bd2be9</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>pushEvent</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a633d81f9f64c4c84063837c261bdb86b</anchor>
      <arglist>(XFEvent *pEvent) override</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>deleteOnTerminate</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a23d578f29658077ea678880e67b060d5</anchor>
      <arglist>() const override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDeleteOnTerminate</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>ad2dd82e9165b08e36d7f967bf103bd11</anchor>
      <arglist>(bool deleteBehaviour) override</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual XFEventStatus</type>
      <name>processEvent</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a0d52aeb051101b13f9258a63ed9b3033</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>const XFEvent *</type>
      <name>getCurrentEvent</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>afebc54c4c25d6660272992b888dd8175</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>interface::XFDispatcher *</type>
      <name>getDispatcher</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a357b7589b7f33c183303f6762e000cc1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>hasOwnDispatcher</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>aae73b881697f374dbe7cab9a909369e6</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>const XFTimeout *</type>
      <name>getCurrentTimeout</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a526e40833adaceb46ce894985e497d55</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>scheduleTimeout</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a7e70a67ea74a99c37061fbdf762f7a55</anchor>
      <arglist>(int timeoutId, int interval)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>unscheduleTimeout</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a753ca0d5667dca95d016c019d64e866d</anchor>
      <arglist>(int timeoutId)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>interface::XFDispatcher *</type>
      <name>_pDispatcher</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a1a2f84f287427e0b6a1f6d815d52031d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>_hasOwnDispatcher</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>ac9afe42391fbc5bbb51cbaef5eba0220</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>deleteOnTerminate_</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>ab756fe572704a385e9954c507c15924c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>const XFEvent *</type>
      <name>_pCurrentEvent</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a4a2f7e37b4b259b458199797ca7d9b0a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFCustomEvent</name>
    <filename>class_x_f_custom_event.html</filename>
    <base>XFEvent</base>
    <member kind="function">
      <type></type>
      <name>XFCustomEvent</name>
      <anchorfile>class_x_f_custom_event.html</anchorfile>
      <anchor>ab21c56f62d98b59e1ee1dfd9137683b3</anchor>
      <arglist>(int id, interface::XFReactive *pBehavior=nullptr)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>deleteAfterConsume</name>
      <anchorfile>class_x_f_custom_event.html</anchorfile>
      <anchor>ab7b119923ef1d0791542e2c7b85b6c5b</anchor>
      <arglist>() const override</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setDeleteAfterConsume</name>
      <anchorfile>class_x_f_custom_event.html</anchorfile>
      <anchor>a857fef63d9865fe47548d771ad7a036c</anchor>
      <arglist>(bool bDeleteAfterConsume=true)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>_bDeleteAfterConsume</name>
      <anchorfile>class_x_f_custom_event.html</anchorfile>
      <anchor>a76b68e7d0b30c5362a0616e437a5e249</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFDispatcher</name>
    <filename>classinterface_1_1_x_f_dispatcher.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>isActive</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a5f1a50c8b1eb512f01a9e449edb7e247</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>acfc8c26282db376f84016951a34aa99a</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>stop</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a81e4c8bc3ce09226908088a9a6ab8669</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>pushEvent</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a6cdb4740b1e2a19ab037455f020e4548</anchor>
      <arglist>(XFEvent *pEvent)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>scheduleTimeout</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>acd1ad89f9723eb80e08e2a6f6fc5fc2a</anchor>
      <arglist>(int timeoutId, int interval, interface::XFReactive *pReactive)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>unscheduleTimeout</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>aa4a3c340fe5453a79504d37ff527d98f</anchor>
      <arglist>(int timeoutId, interface::XFReactive *pReactive)=0</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>XFDispatcher</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>ad3408783319457342fe3595a87af1c94</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual interface::XFThread *</type>
      <name>getThread</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>abddbb62ed1972c438addc7bd529c00a2</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual int</type>
      <name>execute</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a5f19f43b4e0780e3ea78a91af20c9dfa</anchor>
      <arglist>(const void *param=nullptr)=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual int</type>
      <name>executeOnce</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a781a1b5cdd247f9a5eb354e241a8fd69</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>dispatchEvent</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a65addbde50944781dd5ee0631affb701</anchor>
      <arglist>(const XFEvent *pEvent) const =0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFDispatcherActiveDefault</name>
    <filename>class_x_f_dispatcher_active_default.html</filename>
    <base>interface::XFThreadEntryPointProvider</base>
    <base>interface::XFDispatcher</base>
    <member kind="function">
      <type>bool</type>
      <name>isActive</name>
      <anchorfile>class_x_f_dispatcher_active_default.html</anchorfile>
      <anchor>ad0cfd3f647c8767b25431e0f5af53075</anchor>
      <arglist>() const override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>start</name>
      <anchorfile>class_x_f_dispatcher_active_default.html</anchorfile>
      <anchor>afdf7a8eb148f0a360966ee11871d2aaa</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stop</name>
      <anchorfile>class_x_f_dispatcher_active_default.html</anchorfile>
      <anchor>a91dedc2e96f0f792991c465119f3de05</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>pushEvent</name>
      <anchorfile>class_x_f_dispatcher_active_default.html</anchorfile>
      <anchor>a4e352cbe72023a53342bd8c903348e14</anchor>
      <arglist>(XFEvent *pEvent) override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>scheduleTimeout</name>
      <anchorfile>class_x_f_dispatcher_active_default.html</anchorfile>
      <anchor>a22a0ee8bfc6bd14da983f0258062bf0a</anchor>
      <arglist>(int timeoutId, int interval, interface::XFReactive *pReactive) override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unscheduleTimeout</name>
      <anchorfile>class_x_f_dispatcher_active_default.html</anchorfile>
      <anchor>ae1f97f99016cf773534e8362e7766c22</anchor>
      <arglist>(int timeoutId, interface::XFReactive *pReactive) override</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>executeOnce</name>
      <anchorfile>class_x_f_dispatcher_active_default.html</anchorfile>
      <anchor>afbb9afb73e5af020eceb8992f7615610</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>int</type>
      <name>execute</name>
      <anchorfile>class_x_f_dispatcher_active_default.html</anchorfile>
      <anchor>ace899a93b552256849e5e72bff9f134d</anchor>
      <arglist>(const void *param=nullptr) override</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>dispatchEvent</name>
      <anchorfile>class_x_f_dispatcher_active_default.html</anchorfile>
      <anchor>aa7c0d5b8769c05ce01a7454cfc251902</anchor>
      <arglist>(const XFEvent *pEvent) const override</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>_bExecuting</name>
      <anchorfile>class_x_f_dispatcher_active_default.html</anchorfile>
      <anchor>ac0a8d015e5e43edad31aecd1715317f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>interface::XFThread *</type>
      <name>_pThread</name>
      <anchorfile>class_x_f_dispatcher_active_default.html</anchorfile>
      <anchor>ac95ea2add7c85cfb0fb4b21d21c5d4b2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>XFEventQueue</type>
      <name>_events</name>
      <anchorfile>class_x_f_dispatcher_active_default.html</anchorfile>
      <anchor>a87a1c91b7f7d63cd832b44bff7626c2e</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFDispatcherDefault</name>
    <filename>class_x_f_dispatcher_default.html</filename>
    <base>interface::XFDispatcher</base>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isActive</name>
      <anchorfile>class_x_f_dispatcher_default.html</anchorfile>
      <anchor>a9f9a90dcdc9c51a7c7c0fc8bade8c3e2</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>class_x_f_dispatcher_default.html</anchorfile>
      <anchor>a549e39c97a182aba96d8192b2db9bc68</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>stop</name>
      <anchorfile>class_x_f_dispatcher_default.html</anchorfile>
      <anchor>aa3a65f70f7c65f13abbd48ce8c26a90f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>pushEvent</name>
      <anchorfile>class_x_f_dispatcher_default.html</anchorfile>
      <anchor>a726db8c82694d625432d70e922e05eff</anchor>
      <arglist>(XFEvent *pEvent)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>scheduleTimeout</name>
      <anchorfile>class_x_f_dispatcher_default.html</anchorfile>
      <anchor>a0d1e5d37189f60db9a3c80b8bb97a93e</anchor>
      <arglist>(int timeoutId, int interval, interface::XFReactive *pReactive)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>unscheduleTimeout</name>
      <anchorfile>class_x_f_dispatcher_default.html</anchorfile>
      <anchor>a2d0e8b04fed13f38ece3f54bd606864e</anchor>
      <arglist>(int timeoutId, interface::XFReactive *pReactive)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>executeOnce</name>
      <anchorfile>class_x_f_dispatcher_default.html</anchorfile>
      <anchor>af60386464b208bb7bc351226bac77c89</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>execute</name>
      <anchorfile>class_x_f_dispatcher_default.html</anchorfile>
      <anchor>aca64af259345302b0fc6925e438a964e</anchor>
      <arglist>(const void *param=nullptr)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>dispatchEvent</name>
      <anchorfile>class_x_f_dispatcher_default.html</anchorfile>
      <anchor>a31b4182340d72d3237d1aaaedeecfedd</anchor>
      <arglist>(const XFEvent *pEvent) const</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>_bExecuting</name>
      <anchorfile>class_x_f_dispatcher_default.html</anchorfile>
      <anchor>a64a7ba1d66dfe9d28b7e30cb3e9314cb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>XFEventQueue</type>
      <name>_events</name>
      <anchorfile>class_x_f_dispatcher_default.html</anchorfile>
      <anchor>a3d5d1129500664078391ad772164fac1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>interface::XFMutex *</type>
      <name>_pMutex</name>
      <anchorfile>class_x_f_dispatcher_default.html</anchorfile>
      <anchor>a23180de9130ea9bd7c2b26537edd7444</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFEvent</name>
    <filename>class_x_f_event.html</filename>
    <member kind="enumeration">
      <type></type>
      <name>XFEventType</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Unknown</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91adfc2ad39d30f7a5df70c664bb2e24542</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Initial</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91adc2df751813b38295784e246f9fe230e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NullTransition</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91af56340e726637274b5be2ba17d91a80a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Event</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91a4eefc024e7a72ce987c701013de3e100</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Timeout</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91a04f01a94d013ac0b3cd810b556427496</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Terminate</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91a05421c9d2b62f31c8aff06a0a9013dc7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Unknown</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91adfc2ad39d30f7a5df70c664bb2e24542</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Initial</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91adc2df751813b38295784e246f9fe230e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NullTransition</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91af56340e726637274b5be2ba17d91a80a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Event</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91a4eefc024e7a72ce987c701013de3e100</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Timeout</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91a04f01a94d013ac0b3cd810b556427496</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Terminate</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91a05421c9d2b62f31c8aff06a0a9013dc7</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>XFEvent</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a3104f1fbcb09428e0adf08490989f02b</anchor>
      <arglist>(XFEventType eventType, int id, interface::XFReactive *pBehavior)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~XFEvent</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a81e1850b46acd477ea5a9475e12e3e1e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>XFEventType</type>
      <name>getEventType</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>abce814f103406c0a78cad6dd394ac567</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>interface::XFReactive *</type>
      <name>getBehavior</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>af7c57d78a5fb9bff645e72ca974e1cdd</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setBehavior</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a513e27dfc384c90b93bfec94693810d1</anchor>
      <arglist>(interface::XFReactive *pBehavior)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getId</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a33fdd5cc665f6224e803146d6b7ef9f6</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>deleteAfterConsume</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a917cec86b20ee75e768da336f5b18c70</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>const XFEventType</type>
      <name>_eventType</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a42e8271656f8948dd24b2998a022e159</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>int</type>
      <name>_id</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a05d1045ac5f16d50d1d265e7b812b634</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>interface::XFReactive *</type>
      <name>_pBehavior</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a6dd8cfede12953bf22f71cb4cb8546d6</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFEventQueue</name>
    <filename>classinterface_1_1_x_f_event_queue.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>empty</name>
      <anchorfile>classinterface_1_1_x_f_event_queue.html</anchorfile>
      <anchor>ac233817695332ff2c5d5d153a8956347</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>push</name>
      <anchorfile>classinterface_1_1_x_f_event_queue.html</anchorfile>
      <anchor>a9c960cc570590a8ccb02bf879cefda9e</anchor>
      <arglist>(const XFEvent *pEvent)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual const XFEvent *</type>
      <name>front</name>
      <anchorfile>classinterface_1_1_x_f_event_queue.html</anchorfile>
      <anchor>af3ef1cee72ec0c443bdc2650efb86133</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>pop</name>
      <anchorfile>classinterface_1_1_x_f_event_queue.html</anchorfile>
      <anchor>a7f231860c5c4abdabe6db23f0dc0df66</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>pend</name>
      <anchorfile>classinterface_1_1_x_f_event_queue.html</anchorfile>
      <anchor>af7bd7c5d6fa604536de8249f897013c4</anchor>
      <arglist>()=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFEventStatus</name>
    <filename>class_x_f_event_status.html</filename>
    <member kind="enumeration">
      <type></type>
      <name>eEventStatus</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Consumed</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fafa48367d81ae56e4a4312c172fc3bddc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NotConsumed</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa619ade43444917a3cbbd0d806614a007</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RegionFinished</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa70119b07e0f3b80171c74eb4abf29dea</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Terminate</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa8d3b26da0a8fd77cdb2af2e9a18d954b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Consumed</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fafa48367d81ae56e4a4312c172fc3bddc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NotConsumed</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa619ade43444917a3cbbd0d806614a007</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RegionFinished</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa70119b07e0f3b80171c74eb4abf29dea</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Terminate</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa8d3b26da0a8fd77cdb2af2e9a18d954b</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>XFEventStatus</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>a5d94f7b57653a3a30d0d66a4114e994f</anchor>
      <arglist>(eEventStatus eventStatus=Unknown)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>a46751b6a5a371e38a3aa5b049a1de813</anchor>
      <arglist>(const XFEventStatus::eEventStatus &amp;eventStatus) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator|=</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>a5782bdf58db36d8f09ce936f23129004</anchor>
      <arglist>(const XFEventStatus &amp;eventStatus)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>a24123948f7c56f793e75cfa51a7199cf</anchor>
      <arglist>(const eEventStatus eventStatus) const</arglist>
    </member>
    <member kind="variable">
      <type>eEventStatus</type>
      <name>_status</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>a29418714fb04900ed94474db4a068d88</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFInitialEvent</name>
    <filename>class_x_f_initial_event.html</filename>
    <base>XFEvent</base>
    <member kind="function">
      <type>bool</type>
      <name>deleteAfterConsume</name>
      <anchorfile>class_x_f_initial_event.html</anchorfile>
      <anchor>a0a2ab8ade826467db2fe796a663031fe</anchor>
      <arglist>() const override</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFMutex</name>
    <filename>classinterface_1_1_x_f_mutex.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>lock</name>
      <anchorfile>classinterface_1_1_x_f_mutex.html</anchorfile>
      <anchor>a37b990e79385bae3fa7fab35a86c75b3</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>unlock</name>
      <anchorfile>classinterface_1_1_x_f_mutex.html</anchorfile>
      <anchor>a201ab90921e662591f0623155f986834</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>tryLock</name>
      <anchorfile>classinterface_1_1_x_f_mutex.html</anchorfile>
      <anchor>ac90bb5e91af283dbd68f150d92a1cccf</anchor>
      <arglist>(int32_t timeout=0)=0</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static XFMutex *</type>
      <name>create</name>
      <anchorfile>classinterface_1_1_x_f_mutex.html</anchorfile>
      <anchor>a8825f8cb4055598165bd9ac886ab6b33</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFNullTransition</name>
    <filename>class_x_f_null_transition.html</filename>
    <base>XFEvent</base>
    <member kind="function">
      <type></type>
      <name>XFNullTransition</name>
      <anchorfile>class_x_f_null_transition.html</anchorfile>
      <anchor>a4f0db054d5ec0b245d3c8210c639770e</anchor>
      <arglist>(interface::XFReactive *pBehavior=nullptr)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>deleteAfterConsume</name>
      <anchorfile>class_x_f_null_transition.html</anchorfile>
      <anchor>ab4f9d8a71970495a2a6313fd0ad906c9</anchor>
      <arglist>() const override</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFReactive</name>
    <filename>classinterface_1_1_x_f_reactive.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>startBehavior</name>
      <anchorfile>classinterface_1_1_x_f_reactive.html</anchorfile>
      <anchor>ae7857f8ed11a8da7ac3e5e319612ff3c</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>pushEvent</name>
      <anchorfile>classinterface_1_1_x_f_reactive.html</anchorfile>
      <anchor>af442e55f1456c30458319c9431802a13</anchor>
      <arglist>(XFEvent *pEvent)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>deleteOnTerminate</name>
      <anchorfile>classinterface_1_1_x_f_reactive.html</anchorfile>
      <anchor>adfb25121b1922d6ed8188d997a46acbf</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>setDeleteOnTerminate</name>
      <anchorfile>classinterface_1_1_x_f_reactive.html</anchorfile>
      <anchor>a66c8d327cc5818390a6d561230bafebc</anchor>
      <arglist>(bool deleteBehaviour)=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual TerminateBehavior</type>
      <name>process</name>
      <anchorfile>classinterface_1_1_x_f_reactive.html</anchorfile>
      <anchor>acd2b502034f4767fa46107eb12c2b7ff</anchor>
      <arglist>(const XFEvent *pEvent)=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFResourceFactory</name>
    <filename>classinterface_1_1_x_f_resource_factory.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual interface::XFDispatcher *</type>
      <name>getDefaultDispatcher</name>
      <anchorfile>classinterface_1_1_x_f_resource_factory.html</anchorfile>
      <anchor>a88fa083ecdd87251a292250619806f51</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual interface::XFDispatcher *</type>
      <name>createDispatcher</name>
      <anchorfile>classinterface_1_1_x_f_resource_factory.html</anchorfile>
      <anchor>a500eae520893dba8a04350659d67a1bf</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual interface::XFThread *</type>
      <name>createThread</name>
      <anchorfile>classinterface_1_1_x_f_resource_factory.html</anchorfile>
      <anchor>a6e05ef6c1dd4d407cd8a760979ffa462</anchor>
      <arglist>(interface::XFThreadEntryPointProvider *pProvider, interface::XFThread::EntryMethodBody entryMethod, const char *threadName, const uint32_t stackSize=0)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual interface::XFMutex *</type>
      <name>createMutex</name>
      <anchorfile>classinterface_1_1_x_f_resource_factory.html</anchorfile>
      <anchor>a8d2ee87e0a67eef71eabdfd753100e43</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static XFResourceFactory *</type>
      <name>getInstance</name>
      <anchorfile>classinterface_1_1_x_f_resource_factory.html</anchorfile>
      <anchor>a0ade300d54562cd4f0f80d18f63ca3aa</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFResourceFactoryDefault</name>
    <filename>class_x_f_resource_factory_default.html</filename>
    <base>interface::XFResourceFactory</base>
    <member kind="function" virtualness="virtual">
      <type>virtual interface::XFDispatcher *</type>
      <name>getDefaultDispatcher</name>
      <anchorfile>class_x_f_resource_factory_default.html</anchorfile>
      <anchor>a2659f7cd04d37cded8d3e906e5d939a2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual interface::XFDispatcher *</type>
      <name>createDispatcher</name>
      <anchorfile>class_x_f_resource_factory_default.html</anchorfile>
      <anchor>a5cc734fc4e8db1a4a0a63fd565508014</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual interface::XFThread *</type>
      <name>createThread</name>
      <anchorfile>class_x_f_resource_factory_default.html</anchorfile>
      <anchor>ac76509fe4a1a39bbbdbb627f625b583b</anchor>
      <arglist>(interface::XFThreadEntryPointProvider *pProvider, interface::XFThread::EntryMethodBody entryMethod, const char *threadName, const uint32_t stackSize=0)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual interface::XFMutex *</type>
      <name>createMutex</name>
      <anchorfile>class_x_f_resource_factory_default.html</anchorfile>
      <anchor>ad839db8eee8b453eb6b551e12ec340d0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static interface::XFResourceFactory *</type>
      <name>getInstance</name>
      <anchorfile>class_x_f_resource_factory_default.html</anchorfile>
      <anchor>a7a0d31b65d2149bf88984829a66282e7</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFResourceFactoryPort</name>
    <filename>class_x_f_resource_factory_port.html</filename>
    <base>interface::XFResourceFactory</base>
    <member kind="function">
      <type>interface::XFDispatcher *</type>
      <name>getDefaultDispatcher</name>
      <anchorfile>class_x_f_resource_factory_port.html</anchorfile>
      <anchor>a0d05eed376c85858c023f88f51fe8cd7</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>interface::XFDispatcher *</type>
      <name>createDispatcher</name>
      <anchorfile>class_x_f_resource_factory_port.html</anchorfile>
      <anchor>a1daf4a281b6b60e3e252b8ac8f328971</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>interface::XFThread *</type>
      <name>createThread</name>
      <anchorfile>class_x_f_resource_factory_port.html</anchorfile>
      <anchor>a626edf24286be187f6044e4b69f98874</anchor>
      <arglist>(interface::XFThreadEntryPointProvider *pProvider, interface::XFThread::EntryMethodBody entryMethod, const char *threadName, const uint32_t stackSize=0) override</arglist>
    </member>
    <member kind="function">
      <type>interface::XFMutex *</type>
      <name>createMutex</name>
      <anchorfile>class_x_f_resource_factory_port.html</anchorfile>
      <anchor>a31b17aa676b5a6adb1acf32021126817</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static interface::XFResourceFactory *</type>
      <name>getInstance</name>
      <anchorfile>class_x_f_resource_factory_port.html</anchorfile>
      <anchor>afc9b6ea0c1355badb23fb26e00c32f83</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFThread</name>
    <filename>classinterface_1_1_x_f_thread.html</filename>
    <member kind="typedef">
      <type>void(XFThreadEntryPointProvider::*</type>
      <name>EntryMethodBody</name>
      <anchorfile>classinterface_1_1_x_f_thread.html</anchorfile>
      <anchor>a8735ea87f2bb08ab6efdd4c6c241bb4e</anchor>
      <arglist>)(const void *)</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>classinterface_1_1_x_f_thread.html</anchorfile>
      <anchor>ae0654b3ccea3e9d1c1e8896ad378390c</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>stop</name>
      <anchorfile>classinterface_1_1_x_f_thread.html</anchorfile>
      <anchor>a1d051cc93a8e3e8ebed49053a5a21983</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>setPriority</name>
      <anchorfile>classinterface_1_1_x_f_thread.html</anchorfile>
      <anchor>a7ef7a6f23f015cabd098da2d2980f91b</anchor>
      <arglist>(XFThreadPriority priority)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual XFThreadPriority</type>
      <name>getPriority</name>
      <anchorfile>classinterface_1_1_x_f_thread.html</anchorfile>
      <anchor>ae0ee84a4d41959948a5420d73ed6ee68</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>delay</name>
      <anchorfile>classinterface_1_1_x_f_thread.html</anchorfile>
      <anchor>a12f44fc8bdfaaa9b8499ba1b4b7d5cfb</anchor>
      <arglist>(uint32_t milliseconds)=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFThreadEntryPointProvider</name>
    <filename>classinterface_1_1_x_f_thread_entry_point_provider.html</filename>
  </compound>
  <compound kind="class">
    <name>XFTimeout</name>
    <filename>class_x_f_timeout.html</filename>
    <base>XFEvent</base>
    <member kind="function">
      <type></type>
      <name>XFTimeout</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>aadf03a1d66e72bd3c96ade6bbb39c334</anchor>
      <arglist>(int id, int interval, interface::XFReactive *pBehavior)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>a6b82c572dab611bf18175fe502b22181</anchor>
      <arglist>(const XFTimeout &amp;timeout) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>deleteAfterConsume</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>a0d4154698f3337e7181a5f3455a16a93</anchor>
      <arglist>() const override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setRelTicks</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>ae0b2beefd067a4c84f1c37b9cf04fab2</anchor>
      <arglist>(int relTicks)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getRelTicks</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>a3e6ade37aa4ffc14312ec63a1cbb49db</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>substractFromRelTicks</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>afe1d6c0d58e92c2c1cfc12e0906d8bb1</anchor>
      <arglist>(int ticksToSubstract)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addToRelTicks</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>af95f95b9c6f48f2bcafc4f0e8bed6b6d</anchor>
      <arglist>(int ticksToAdd)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>int</type>
      <name>_interval</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>a28b03dba8dd82e9d9aecfbee822a11b3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>int</type>
      <name>_relTicks</name>
      <anchorfile>class_x_f_timeout.html</anchorfile>
      <anchor>abda72ce0831b9a8f73ae3d9e28b428cc</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFTimeoutManager</name>
    <filename>classinterface_1_1_x_f_timeout_manager.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>initialize</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>abec8b9945e0d576c12158b7476f90432</anchor>
      <arglist>(int32_t tickInterval)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int32_t</type>
      <name>getTickInterval</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>a905ce79bdbb26c7764b7e258c1b6d85c</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>a32ea13c6c535867e8e5d148ce6385bba</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>scheduleTimeout</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>af5bd768471956e673b6b8b0a2b1b3d20</anchor>
      <arglist>(int32_t timeoutId, int32_t interval, interface::XFReactive *pReactive)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>unscheduleTimeout</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>a524b144347b7644cb22f61fd242b989d</anchor>
      <arglist>(int32_t timeoutId, interface::XFReactive *pReactive)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>tick</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>a90f30654c0d7ab0f139da664f9c9c5cb</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static XFTimeoutManager *</type>
      <name>getInstance</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>ae613d86baaf888bbd3907a82dae64999</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>addTimeout</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>a841dbfddb18f1b9906cc9da8d4c385c6</anchor>
      <arglist>(XFTimeout *pNewTimeout)=0</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>int32_t</type>
      <name>_tickInterval</name>
      <anchorfile>classinterface_1_1_x_f_timeout_manager.html</anchorfile>
      <anchor>a66763b06e65005a420d2dcb747db8847</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFTimeoutManagerDefault</name>
    <filename>class_x_f_timeout_manager_default.html</filename>
    <base>interface::XFTimeoutManager</base>
    <member kind="function">
      <type>void</type>
      <name>start</name>
      <anchorfile>class_x_f_timeout_manager_default.html</anchorfile>
      <anchor>af78886292526b2b80039383cc124d873</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>scheduleTimeout</name>
      <anchorfile>class_x_f_timeout_manager_default.html</anchorfile>
      <anchor>ac3d1c2d79743d1caf59e6f6a7e02031a</anchor>
      <arglist>(int32_t timeoutId, int32_t interval, interface::XFReactive *pReactive) override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unscheduleTimeout</name>
      <anchorfile>class_x_f_timeout_manager_default.html</anchorfile>
      <anchor>ab35e311fa0a86ee2dbf227dd590f4422</anchor>
      <arglist>(int32_t timeoutId, interface::XFReactive *pReactive) override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>tick</name>
      <anchorfile>class_x_f_timeout_manager_default.html</anchorfile>
      <anchor>a7ce8d281ae2b24dfa89194763b32c2f7</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static interface::XFTimeoutManager *</type>
      <name>getInstance</name>
      <anchorfile>class_x_f_timeout_manager_default.html</anchorfile>
      <anchor>a398fc00329748af459a85ef8d2def5e5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>std::list&lt; XFTimeout * &gt;</type>
      <name>TimeoutList</name>
      <anchorfile>class_x_f_timeout_manager_default.html</anchorfile>
      <anchor>ae0a48a2acb568cba4049446d3ad4e2de</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>addTimeout</name>
      <anchorfile>class_x_f_timeout_manager_default.html</anchorfile>
      <anchor>af7bacdd6e14034eee89c4e8b8f19254d</anchor>
      <arglist>(XFTimeout *pNewTimeout) override</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>returnTimeout</name>
      <anchorfile>class_x_f_timeout_manager_default.html</anchorfile>
      <anchor>a3e73acf6628baac762c5ca5aaaeeb83e</anchor>
      <arglist>(XFTimeout *pTimeout)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>TimeoutList</type>
      <name>_timeouts</name>
      <anchorfile>class_x_f_timeout_manager_default.html</anchorfile>
      <anchor>a04014d94c4e788a99f8dbbddda40c0ab</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>interface::XFMutex *</type>
      <name>_pMutex</name>
      <anchorfile>class_x_f_timeout_manager_default.html</anchorfile>
      <anchor>a978b78fd50a73e898dfb21d180354549</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>xf_core</name>
    <title>XF Core Classes</title>
    <filename>group__xf__core.html</filename>
    <class kind="class">XFBehavior</class>
    <class kind="class">XFCustomEvent</class>
    <class kind="class">XFEvent</class>
    <class kind="class">XFEventStatus</class>
    <class kind="class">XFInitialEvent</class>
    <class kind="class">XFNullTransition</class>
    <class kind="class">XFTimeout</class>
    <class kind="class">XF</class>
  </compound>
  <compound kind="group">
    <name>port_default</name>
    <title>XF Default Port Classes</title>
    <filename>group__port__default.html</filename>
    <class kind="class">XFDispatcherActiveDefault</class>
    <class kind="class">XFDispatcherDefault</class>
    <class kind="class">XFResourceFactoryDefault</class>
    <class kind="class">XFTimeoutManagerDefault</class>
  </compound>
  <compound kind="group">
    <name>port_default_idf</name>
    <title>IDF Platform Default Port Classes</title>
    <filename>group__port__default__idf.html</filename>
  </compound>
  <compound kind="group">
    <name>port_default_qt</name>
    <title>Qt Platform Default Port Classes</title>
    <filename>group__port__default__qt.html</filename>
  </compound>
  <compound kind="group">
    <name>port_idf_qt</name>
    <title>IDF Qt Port Classes</title>
    <filename>group__port__idf__qt.html</filename>
    <class kind="class">XFResourceFactoryPort</class>
  </compound>
  <compound kind="group">
    <name>port_idf_stm32cube</name>
    <title>IDF STM32Cube Port Classes</title>
    <filename>group__port__idf__stm32cube.html</filename>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>PTR Execution Framework Documentation</title>
    <filename>index</filename>
    <docanchor file="index" title="Introduction">sec_xf_intro</docanchor>
    <docanchor file="index" title="XF Component Diagram">sec_xf_comp</docanchor>
    <docanchor file="index" title="XF Class Diagram">sec_xf_cmd</docanchor>
    <docanchor file="index" title="Starting Point">sec_xf_start</docanchor>
    <docanchor file="index" title="Links to related Documentation">sec_xf_external_links</docanchor>
    <docanchor file="index" title="XF Releases">sec_xf_releases</docanchor>
    <docanchor file="index" title="XF Version: 3.3.2 (2020-09)">xf_v_3_3_2</docanchor>
    <docanchor file="index" title="XF Version: 3.3.1 (2020-04)">xf_v_3_3_1</docanchor>
    <docanchor file="index" title="XF Version: 3.3.0 (2020-02)">xf_v_3_3_0</docanchor>
    <docanchor file="index" title="XF Version: 3.2.1 (2019-04)">xf_v_3_2_1</docanchor>
    <docanchor file="index" title="XF Version: 3.2 (2018-09)">xf_v_3_2</docanchor>
    <docanchor file="index" title="XF Version: 3.1 (2017-11)">xf_v_3_1</docanchor>
    <docanchor file="index" title="XF Version: 3.0 (2017-10)">xf_v_3_0</docanchor>
    <docanchor file="index" title="XF Version: 2.1 (2015-03-02)">xf_v_2_1</docanchor>
    <docanchor file="index" title="XF Version: 2.0 (2014-04-28)">xf_v_2_0</docanchor>
    <docanchor file="index" title="XF Version: 1.0 (2014-04-24)">xf_v_1_0</docanchor>
    <docanchor file="index" title="XF Version: 0.5 (2013-12-09)">xf_v_0_5</docanchor>
    <docanchor file="index" title="XF Version: 0.4 (2013-12-05)">xf_v_0_4</docanchor>
    <docanchor file="index" title="XF Version: 0.3 (2013-09-19)">xf_v_0_3</docanchor>
    <docanchor file="index" title="XF Version: 0.2 (2011-08-14)">xf_v_0_2</docanchor>
    <docanchor file="index" title="XF Version: 0.1 (2010-11-26)">xf_v_0_1</docanchor>
  </compound>
</tagfile>
