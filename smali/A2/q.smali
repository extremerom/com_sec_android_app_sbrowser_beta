.class public abstract synthetic LA2/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)F
    .locals 0

    invoke-virtual {p0}, Landroid/widget/EditText;->getHandwritingBoundsOffsetTop()F

    move-result p0

    return p0
.end method

.method public static synthetic B()V
    .locals 1

    new-instance v0, Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;

    return-void
.end method

.method public static bridge synthetic C(Landroid/app/ActivityOptions;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    return-void
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)F
    .locals 0

    invoke-virtual {p0}, Landroid/widget/EditText;->getHandwritingBoundsOffsetRight()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic a(Landroid/util/DisplayMetrics;F)F
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)F
    .locals 0

    invoke-virtual {p0}, Landroid/widget/EditText;->getHandwritingBoundsOffsetLeft()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    return-wide v0
.end method

.method public static bridge synthetic d(Landroid/adservices/measurement/WebTriggerParams$Builder;Z)Landroid/adservices/measurement/WebTriggerParams$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/adservices/measurement/WebTriggerParams$Builder;->setDebugKeyAllowed(Z)Landroid/adservices/measurement/WebTriggerParams$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/adservices/measurement/WebTriggerParams$Builder;)Landroid/adservices/measurement/WebTriggerParams;
    .locals 0

    invoke-virtual {p0}, Landroid/adservices/measurement/WebTriggerParams$Builder;->build()Landroid/adservices/measurement/WebTriggerParams;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroid/net/Uri;Ljava/util/ArrayList;)Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;
    .locals 1

    new-instance v0, Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;

    invoke-direct {v0, p1, p0}, Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;-><init>(Ljava/util/List;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static bridge synthetic g(Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;)Landroid/adservices/measurement/WebTriggerRegistrationRequest;
    .locals 0

    invoke-virtual {p0}, Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;->build()Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo$Builder;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/job/JobInfo$Builder;->setUserInitiated(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Landroid/graphics/Gainmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Gainmap;->getGainmapContents()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Landroid/graphics/Bitmap;)Landroid/graphics/Gainmap;
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/view/autofill/VirtualViewFillInfo$Builder;[Ljava/lang/String;)Landroid/view/autofill/VirtualViewFillInfo$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/autofill/VirtualViewFillInfo$Builder;->setAutofillHints([Ljava/lang/String;)Landroid/view/autofill/VirtualViewFillInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Landroid/view/autofill/VirtualViewFillInfo$Builder;)Landroid/view/autofill/VirtualViewFillInfo;
    .locals 0

    invoke-virtual {p0}, Landroid/view/autofill/VirtualViewFillInfo$Builder;->build()Landroid/view/autofill/VirtualViewFillInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/InstallSourceInfo;->getUpdateOwnerPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Ljava/util/HexFormat;[B)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p()Ljava/util/HexFormat;
    .locals 1

    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic q()V
    .locals 1

    new-instance v0, Landroid/adservices/measurement/WebTriggerParams$Builder;

    return-void
.end method

.method public static bridge synthetic r(Landroid/app/ActivityOptions;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    return-void
.end method

.method public static bridge synthetic s(Landroid/app/ActivityOptions;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    return-void
.end method

.method public static bridge synthetic t(Landroid/graphics/Bitmap;Landroid/graphics/Gainmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    return-void
.end method

.method public static bridge synthetic u(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setQueryFromAppProcessEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public static bridge synthetic v(Landroid/view/autofill/AutofillManager;Landroid/view/View;Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->notifyVirtualViewsReady(Landroid/view/View;Landroid/util/SparseArray;)V

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;ILandroid/app/Notification;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/job/JobService;->setNotification(Landroid/app/job/JobParameters;ILandroid/app/Notification;I)V

    return-void
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Landroid/app/Notification;)V
    .locals 2

    const v0, 0xbde31

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/app/job/JobService;->setNotification(Landroid/app/job/JobParameters;ILandroid/app/Notification;I)V

    return-void
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;FFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/EditText;->setHandwritingBoundsOffsets(FFFF)V

    return-void
.end method

.method public static bridge synthetic z(Landroid/graphics/Bitmap;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result p0

    return p0
.end method
