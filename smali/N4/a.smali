.class public final synthetic LN4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LN4/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget p0, p0, LN4/a;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lorg/chromium/ui/widget/LoadingView;->a()V

    return-void

    :pswitch_0
    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->b()V

    return-void

    :pswitch_1
    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->c()V

    return-void

    :pswitch_2
    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->a()V

    return-void

    :pswitch_3
    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->updateAccessibilityServices()V

    return-void

    :pswitch_4
    invoke-static {}, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->a()V

    return-void

    :pswitch_5
    invoke-static {}, Lorg/chromium/components/webauthn/GpmBrowserOptionsHelper;->a()V

    return-void

    :pswitch_6
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacadeProvider;->a()V

    return-void

    :pswitch_7
    invoke-static {}, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->b()V

    return-void

    :pswitch_8
    invoke-static {}, Lorg/chromium/components/policy/PolicyCache;->a()V

    return-void

    :pswitch_9
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryPrefetcher;->b()V

    return-void

    :pswitch_a
    invoke-static {}, Lcom/sec/terrace/content/browser/TinWebContentsImpl$TinSmartClipCallback;->b()V

    return-void

    :pswitch_b
    invoke-static {}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->y()V

    return-void

    :pswitch_c
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->k()V

    return-void

    :pswitch_d
    invoke-static {}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->b()V

    return-void

    :pswitch_e
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->b()V

    return-void

    :pswitch_f
    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->h()V

    return-void

    :pswitch_10
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->b()V

    return-void

    :pswitch_11
    invoke-static {}, Lcom/samsung/android/livetranslation/text/LiveTranslation;->a()V

    return-void

    :pswitch_12
    sget p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;->a:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
