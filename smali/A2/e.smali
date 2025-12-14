.class public abstract synthetic LA2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/window/InputTransferToken;Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/window/InputTransferToken;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static bridge synthetic B(Landroid/window/InputTransferToken;Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/window/InputTransferToken;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static bridge synthetic C(Lg9/d;F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setRequestedFrameRate(F)V

    return-void
.end method

.method public static bridge synthetic D(Landroid/view/WindowManager;Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/view/WindowManager;->transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic a(Lg9/d;)F
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRequestedFrameRate()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/app/ComponentCaller;Landroid/net/Uri;)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/ComponentCaller;->checkContentUriPermission(Landroid/net/Uri;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Landroid/window/InputTransferToken;)I
    .locals 0

    invoke-virtual {p0}, Landroid/window/InputTransferToken;->hashCode()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Landroid/app/Activity;)Landroid/app/ComponentCaller;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentCaller()Landroid/app/ComponentCaller;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()Landroid/content/ClipData$Item$Builder;
    .locals 1

    new-instance v0, Landroid/content/ClipData$Item$Builder;

    invoke-direct {v0}, Landroid/content/ClipData$Item$Builder;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic f(Landroid/content/ClipData$Item$Builder;Landroid/content/IntentSender;)Landroid/content/ClipData$Item$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/ClipData$Item$Builder;->setIntentSender(Landroid/content/IntentSender;)Landroid/content/ClipData$Item$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/content/ClipData$Item$Builder;Ljava/lang/String;)Landroid/content/ClipData$Item$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/ClipData$Item$Builder;->setText(Ljava/lang/CharSequence;)Landroid/content/ClipData$Item$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/content/ClipData$Item$Builder;)Landroid/content/ClipData$Item;
    .locals 0

    invoke-virtual {p0}, Landroid/content/ClipData$Item$Builder;->build()Landroid/content/ClipData$Item;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i()Landroid/os/Parcelable$Creator;
    .locals 1

    sget-object v0, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public static bridge synthetic j(Landroid/view/WindowInsets;)Landroid/util/Size;
    .locals 0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getFrame()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/view/AttachedSurfaceControl;)Landroid/window/InputTransferToken;
    .locals 0

    invoke-interface {p0}, Landroid/view/AttachedSurfaceControl;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/lang/Object;)Landroid/window/InputTransferToken;
    .locals 0

    check-cast p0, Landroid/window/InputTransferToken;

    return-object p0
.end method

.method public static synthetic m()Landroid/window/TrustedPresentationThresholds;
    .locals 3

    new-instance v0, Landroid/window/TrustedPresentationThresholds;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Landroid/window/TrustedPresentationThresholds;-><init>(FFI)V

    return-object v0
.end method

.method public static bridge synthetic n(Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;->getIndexableNestedProperties()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Landroid/view/WindowInsets;I)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getBoundingRects(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Landroid/adservices/measurement/MeasurementManager;LA2/f;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/adservices/measurement/MeasurementManager;->getMeasurementApiStatus(Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V

    return-void
.end method

.method public static bridge synthetic q(Landroid/adservices/measurement/MeasurementManager;Landroid/adservices/measurement/DeletionRequest;LA2/f;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/adservices/measurement/MeasurementManager;->deleteRegistrations(Landroid/adservices/measurement/DeletionRequest;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V

    return-void
.end method

.method public static bridge synthetic r(Landroid/adservices/measurement/MeasurementManager;Landroid/adservices/measurement/WebSourceRegistrationRequest;LA2/f;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/adservices/measurement/MeasurementManager;->registerWebSource(Landroid/adservices/measurement/WebSourceRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V

    return-void
.end method

.method public static bridge synthetic s(Landroid/adservices/measurement/MeasurementManager;Landroid/adservices/measurement/WebTriggerRegistrationRequest;LA2/f;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/adservices/measurement/MeasurementManager;->registerWebTrigger(Landroid/adservices/measurement/WebTriggerRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V

    return-void
.end method

.method public static bridge synthetic t(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;LA2/f;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/adservices/measurement/MeasurementManager;->registerTrigger(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V

    return-void
.end method

.method public static bridge synthetic u(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Landroid/view/InputEvent;LA2/f;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/adservices/measurement/MeasurementManager;->registerSource(Landroid/net/Uri;Landroid/view/InputEvent;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V

    return-void
.end method

.method public static bridge synthetic v(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Landroid/view/MotionEvent;LA2/f;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/adservices/measurement/MeasurementManager;->registerSource(Landroid/net/Uri;Landroid/view/InputEvent;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V

    return-void
.end method

.method public static bridge synthetic w(Landroid/app/appsearch/PutDocumentsRequest$Builder;[Landroid/app/appsearch/GenericDocument;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addTakenActionGenericDocuments([Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    return-void
.end method

.method public static bridge synthetic x(Landroid/view/View;)V
    .locals 1

    const/high16 v0, -0x3fc00000    # -3.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setRequestedFrameRate(F)V

    return-void
.end method

.method public static bridge synthetic y(Landroid/view/WindowManager;Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;LA2/f;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/WindowManager;->registerTrustedPresentationListener(Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic z(Landroid/view/WindowManager;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/view/WindowManager;->unregisterTrustedPresentationListener(Ljava/util/function/Consumer;)V

    return-void
.end method
