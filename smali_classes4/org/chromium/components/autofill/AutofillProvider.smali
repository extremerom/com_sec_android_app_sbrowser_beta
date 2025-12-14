.class public Lorg/chromium/components/autofill/AutofillProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/autofill/AutofillProvider$AutofillManagerWrapperFactoryForTesting;,
        Lorg/chromium/components/autofill/AutofillProvider$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullUnmarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SAMSUNG_PASS_SAVE_POPUP_SUPPORTED_ONE_UI_VERSION:I

.field private static sAutofillManagerFactoryForTesting:Lorg/chromium/components/autofill/AutofillProvider$AutofillManagerWrapperFactoryForTesting;


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

.field private mAutofillTriggeredTimeMillis:J

.field private mAutofillUMA:Lorg/chromium/components/autofill/AutofillProviderUMA;

.field private mContainerView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDatalistPopup:Lorg/chromium/components/autofill/AutofillPopup;

.field private mDatalistSuggestions:[Lorg/chromium/components/autofill/AutofillSuggestion;

.field private mInputUiObserver:Lorg/chromium/components/autofill/AutofillManagerWrapper$InputUiObserver;

.field private mNativeAutofillProvider:J

.field private mPrefillRequest:Lorg/chromium/components/autofill/PrefillRequest;

.field private final mProviderName:Ljava/lang/String;

.field private mRequest:Lorg/chromium/components/autofill/AutofillRequest;

.field private mStructureProvidedForPrefillRequest:Z

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mWebContentsAccessibility:Lorg/chromium/content_public/browser/WebContentsAccessibility;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/chromium/ui/base/DeviceFormFactor;->isVst()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xea60

    goto :goto_0

    :cond_0
    const v0, 0xeac5

    :goto_0
    sput v0, Lorg/chromium/components/autofill/AutofillProvider;->SAMSUNG_PASS_SAVE_POPUP_SUPPORTED_ONE_UI_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/chromium/components/autofill/AutofillProvider;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iput-object p4, p0, Lorg/chromium/components/autofill/AutofillProvider;->mProviderName:Ljava/lang/String;

    const-string p4, "AutofillProvider.constructor"

    invoke-static {p4}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object p4

    :try_start_0
    sget-object v0, Lorg/chromium/components/autofill/AutofillProvider;->sAutofillManagerFactoryForTesting:Lorg/chromium/components/autofill/AutofillProvider$AutofillManagerWrapperFactoryForTesting;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/chromium/components/autofill/AutofillProvider$AutofillManagerWrapperFactoryForTesting;->create(Landroid/content/Context;)Lorg/chromium/components/autofill/AutofillManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/chromium/components/autofill/AutofillManagerWrapper;

    invoke-direct {v0, p1}, Lorg/chromium/components/autofill/AutofillManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    :goto_0
    iput-object p2, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContainerView:Landroid/view/ViewGroup;

    new-instance p2, Lorg/chromium/components/autofill/AutofillProviderUMA;

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isAwGCurrentAutofillService()Z

    move-result v0

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    invoke-virtual {v1}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lorg/chromium/components/autofill/AutofillProviderUMA;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object p2, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillUMA:Lorg/chromium/components/autofill/AutofillProviderUMA;

    new-instance p2, Lorg/chromium/components/autofill/AutofillProvider$1;

    invoke-direct {p2, p0}, Lorg/chromium/components/autofill/AutofillProvider$1;-><init>(Lorg/chromium/components/autofill/AutofillProvider;)V

    iput-object p2, p0, Lorg/chromium/components/autofill/AutofillProvider;->mInputUiObserver:Lorg/chromium/components/autofill/AutofillManagerWrapper$InputUiObserver;

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    invoke-virtual {v0, p2}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->addInputUiObserver(Lorg/chromium/components/autofill/AutofillManagerWrapper$InputUiObserver;)V

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_1
    invoke-virtual {p0, p3}, Lorg/chromium/components/autofill/AutofillProvider;->initializeNativeAutofillProvider(Lorg/chromium/content_public/browser/WebContents;)V

    return-void

    :goto_1
    if-eqz p4, :cond_2

    :try_start_1
    invoke-virtual {p4}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p0
.end method

.method public static bridge synthetic a(Lorg/chromium/components/autofill/AutofillProvider;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillTriggeredTimeMillis:J

    return-wide v0
.end method

.method private acceptDataListSuggestion(JLjava/lang/String;)V
    .locals 0

    invoke-static {}, Lorg/chromium/components/autofill/AutofillProviderJni;->get()Lorg/chromium/components/autofill/AutofillProvider$Natives;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/chromium/components/autofill/AutofillProvider$Natives;->onAcceptDataListSuggestion(JLjava/lang/String;)V

    return-void
.end method

.method private autofill(J)V
    .locals 0

    invoke-static {}, Lorg/chromium/components/autofill/AutofillProviderJni;->get()Lorg/chromium/components/autofill/AutofillProvider$Natives;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/chromium/components/autofill/AutofillProvider$Natives;->onAutofillAvailable(J)V

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/components/autofill/AutofillProvider;)Lorg/chromium/components/autofill/AutofillProviderUMA;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillUMA:Lorg/chromium/components/autofill/AutofillProviderUMA;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/components/autofill/AutofillProvider;)[Lorg/chromium/components/autofill/AutofillSuggestion;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mDatalistSuggestions:[Lorg/chromium/components/autofill/AutofillSuggestion;

    return-object p0
.end method

.method public static bridge synthetic d(Lorg/chromium/components/autofill/AutofillProvider;)Lorg/chromium/components/autofill/AutofillRequest;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    return-object p0
.end method

.method private detachFromJavaAutofillProvider()V
    .locals 5

    iget-wide v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mNativeAutofillProvider:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iput-wide v2, p0, Lorg/chromium/components/autofill/AutofillProvider;->mNativeAutofillProvider:J

    invoke-static {}, Lorg/chromium/components/autofill/AutofillProviderJni;->get()Lorg/chromium/components/autofill/AutofillProvider$Natives;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lorg/chromium/components/autofill/AutofillProvider$Natives;->detachFromJavaAutofillProvider(J)V

    return-void
.end method

.method public static bridge synthetic e(Lorg/chromium/components/autofill/AutofillProvider;)Lorg/chromium/content_public/browser/WebContentsAccessibility;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mWebContentsAccessibility:Lorg/chromium/content_public/browser/WebContentsAccessibility;

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/chromium/components/autofill/AutofillProvider;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillProvider;->onDatalistPopupDismissed()V

    return-void
.end method

.method private forceNotifyFormValues()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    invoke-virtual {v1}, Lorg/chromium/components/autofill/AutofillRequest;->getFieldCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/components/autofill/AutofillProvider;->notifyVirtualValueChanged(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private forceNotifyVirtualViewCanceled()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->cancel()V

    :cond_1
    return-void
.end method

.method public static bridge synthetic g(Lorg/chromium/components/autofill/AutofillProvider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/autofill/AutofillProvider;->onSuggestionSelected(Ljava/lang/String;)V

    return-void
.end method

.method private isDatalistField(I)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/chromium/components/autofill/AutofillRequest;->getField(S)Lorg/chromium/components/autofill/FormFieldData;

    move-result-object p0

    iget p0, p0, Lorg/chromium/components/autofill/FormFieldData;->mControlType:I

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyViewExitBeforeDestroyRequest()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillRequest;->getFocusField()Lorg/chromium/components/autofill/AutofillRequest$FocusField;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContainerView:Landroid/view/ViewGroup;

    iget-short v0, v0, Lorg/chromium/components/autofill/AutofillRequest$FocusField;->fieldIndex:S

    invoke-direct {p0, v1, v0}, Lorg/chromium/components/autofill/AutofillProvider;->notifyVirtualViewExited(Landroid/view/View;I)V

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/components/autofill/AutofillRequest;->setFocusField(Lorg/chromium/components/autofill/AutofillRequest$FocusField;)V

    return-void
.end method

.method private notifyVirtualValueChanged(IZ)V
    .locals 2

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/components/autofill/AutofillProvider;->isDatalistField(I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    invoke-virtual {p2, p1}, Lorg/chromium/components/autofill/AutofillRequest;->getFieldNewValue(I)Landroid/view/autofill/AutofillValue;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContainerView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/chromium/components/autofill/AutofillRequest;->getFieldVirtualId(S)I

    move-result p0

    invoke-virtual {v0, v1, p0, p2}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->notifyVirtualValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    return-void
.end method

.method private notifyVirtualViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0, p2}, Lorg/chromium/components/autofill/AutofillProvider;->isDatalistField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    int-to-short p2, p2

    invoke-virtual {p0, p2}, Lorg/chromium/components/autofill/AutofillRequest;->getFieldVirtualId(S)I

    move-result p0

    invoke-virtual {v0, p1, p0, p3}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->notifyVirtualViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    return-void
.end method

.method private notifyVirtualViewExited(Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0, p2}, Lorg/chromium/components/autofill/AutofillProvider;->isDatalistField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    int-to-short p2, p2

    invoke-virtual {p0, p2}, Lorg/chromium/components/autofill/AutofillRequest;->getFieldVirtualId(S)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->notifyVirtualViewExited(Landroid/view/View;I)V

    return-void
.end method

.method private notifyVirtualViewVisibilityChanged(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/chromium/components/autofill/AutofillProvider;->isDatalistField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContainerView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/chromium/components/autofill/AutofillRequest;->getFieldVirtualId(S)I

    move-result p0

    invoke-virtual {v0, v1, p0, p2}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->notifyVirtualViewVisibilityChanged(Landroid/view/View;IZ)V

    return-void
.end method

.method private onDatalistPopupDismissed()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method private onFocusChangedImpl(ZIFFFFZ)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillRequest;->getFocusField()Lorg/chromium/components/autofill/AutofillRequest$FocusField;

    move-result-object v0

    if-eqz p1, :cond_4

    new-instance p1, Landroid/graphics/RectF;

    add-float/2addr p5, p3

    add-float/2addr p6, p4

    invoke-direct {p1, p3, p4, p5, p6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1}, Lorg/chromium/components/autofill/AutofillProvider;->transformToWindowBounds(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz v0, :cond_1

    iget-short p3, v0, Lorg/chromium/components/autofill/AutofillRequest$FocusField;->fieldIndex:S

    if-ne p3, p2, :cond_1

    iget-object p3, v0, Lorg/chromium/components/autofill/AutofillRequest$FocusField;->absBound:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-boolean p3, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-nez p3, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    iget-object p3, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContainerView:Landroid/view/ViewGroup;

    iget-short p4, v0, Lorg/chromium/components/autofill/AutofillRequest$FocusField;->fieldIndex:S

    invoke-direct {p0, p3, p4}, Lorg/chromium/components/autofill/AutofillProvider;->notifyVirtualViewExited(Landroid/view/View;I)V

    :cond_2
    iget-object p3, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, p3, p2, p1}, Lorg/chromium/components/autofill/AutofillProvider;->notifyVirtualViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    if-nez p7, :cond_3

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Lorg/chromium/components/autofill/AutofillProvider;->notifyVirtualValueChanged(IZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillTriggeredTimeMillis:J

    :cond_3
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    new-instance p3, Lorg/chromium/components/autofill/AutofillRequest$FocusField;

    int-to-short p2, p2

    invoke-direct {p3, p2, p1}, Lorg/chromium/components/autofill/AutofillRequest$FocusField;-><init>(SLandroid/graphics/Rect;)V

    invoke-virtual {p0, p3}, Lorg/chromium/components/autofill/AutofillRequest;->setFocusField(Lorg/chromium/components/autofill/AutofillRequest$FocusField;)V

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContainerView:Landroid/view/ViewGroup;

    iget-short p2, v0, Lorg/chromium/components/autofill/AutofillRequest$FocusField;->fieldIndex:S

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/autofill/AutofillProvider;->notifyVirtualViewExited(Landroid/view/View;I)V

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/chromium/components/autofill/AutofillRequest;->setFocusField(Lorg/chromium/components/autofill/AutofillRequest$FocusField;)V

    :goto_0
    return-void
.end method

.method private onFormFieldVisibilitiesDidChange([I)V
    .locals 5
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    if-eqz v0, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillUMA:Lorg/chromium/components/autofill/AutofillProviderUMA;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillProviderUMA;->onFieldChangedVisibility()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    iget-object v3, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    int-to-short v4, v2

    invoke-virtual {v3, v4}, Lorg/chromium/components/autofill/AutofillRequest;->getField(S)Lorg/chromium/components/autofill/FormFieldData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/components/autofill/FormFieldData;->getVisible()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/chromium/components/autofill/AutofillProvider;->notifyVirtualViewVisibilityChanged(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private onServerPredictionsAvailable()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillRequest;->onServerPredictionsAvailable()V

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->onServerPredictionsAvailable()V

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillUMA:Lorg/chromium/components/autofill/AutofillProviderUMA;

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillRequest;->getForm()Lorg/chromium/components/autofill/FormData;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/chromium/components/autofill/AutofillProviderUMA;->onServerTypeAvailable(Lorg/chromium/components/autofill/FormData;Z)V

    return-void
.end method

.method private onSuggestionSelected(Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mNativeAutofillProvider:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/components/autofill/AutofillProvider;->acceptDataListSuggestion(JLjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillProvider;->hideDatalistPopup()V

    return-void
.end method

.method private setAnchorViewRect(JLandroid/view/View;Landroid/graphics/RectF;)V
    .locals 8

    invoke-static {}, Lorg/chromium/components/autofill/AutofillProviderJni;->get()Lorg/chromium/components/autofill/AutofillProvider$Natives;

    move-result-object v0

    iget v4, p4, Landroid/graphics/RectF;->left:F

    iget v5, p4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-wide v1, p1

    move-object v3, p3

    invoke-interface/range {v0 .. v7}, Lorg/chromium/components/autofill/AutofillProvider$Natives;->setAnchorViewRect(JLandroid/view/View;FFFF)V

    return-void
.end method

.method private setAnchorViewRect(Landroid/graphics/RectF;)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mNativeAutofillProvider:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/chromium/components/autofill/AutofillProvider;->setAnchorViewRect(JLandroid/view/View;Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private showAutofillDialog(Landroid/view/View;I)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-direct {p0, p2}, Lorg/chromium/components/autofill/AutofillProvider;->isDatalistField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    int-to-short p2, p2

    invoke-virtual {p0, p2}, Lorg/chromium/components/autofill/AutofillRequest;->getFieldVirtualId(S)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->showAutofillDialog(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method private showDatalistPopup([Ljava/lang/String;[Ljava/lang/String;Landroid/graphics/RectF;Z)V
    .locals 5

    array-length v0, p1

    new-array v0, v0, [Lorg/chromium/components/autofill/AutofillSuggestion;

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mDatalistSuggestions:[Lorg/chromium/components/autofill/AutofillSuggestion;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mDatalistSuggestions:[Lorg/chromium/components/autofill/AutofillSuggestion;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    invoke-direct {v2}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;-><init>()V

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->setLabel(Ljava/lang/String;)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->setSubLabel(Ljava/lang/String;)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->setItemTag(Ljava/lang/String;)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    move-result-object v2

    const/16 v4, 0x14

    invoke-virtual {v2, v4}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->setSuggestionType(I)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->setFeatureForIph(Ljava/lang/String;)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->build()Lorg/chromium/components/autofill/AutofillSuggestion;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mWebContentsAccessibility:Lorg/chromium/content_public/browser/WebContentsAccessibility;

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p1}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/WebContentsAccessibility;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mWebContentsAccessibility:Lorg/chromium/content_public/browser/WebContentsAccessibility;

    :cond_1
    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mDatalistPopup:Lorg/chromium/components/autofill/AutofillPopup;

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lorg/chromium/base/ContextUtils;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAnchorView:Landroid/view/View;

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->acquireView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAnchorView:Landroid/view/View;

    :cond_3
    invoke-direct {p0, p3}, Lorg/chromium/components/autofill/AutofillProvider;->setAnchorViewRect(Landroid/graphics/RectF;)V

    :try_start_0
    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p2, Lorg/chromium/components/autofill/AutofillPopup;

    iget-object p3, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAnchorView:Landroid/view/View;

    new-instance v1, Lorg/chromium/components/autofill/AutofillProvider$2;

    invoke-direct {v1, p0}, Lorg/chromium/components/autofill/AutofillProvider$2;-><init>(Lorg/chromium/components/autofill/AutofillProvider;)V

    const/4 v2, 0x0

    invoke-direct {p2, p3, v0, v1, v2}, Lorg/chromium/components/autofill/AutofillPopup;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/chromium/components/autofill/AutofillDelegate;Lorg/chromium/ui/widget/RectProvider;)V

    iput-object p2, p0, Lorg/chromium/components/autofill/AutofillProvider;->mDatalistPopup:Lorg/chromium/components/autofill/AutofillPopup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_5

    :try_start_2
    invoke-virtual {p1}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_4

    :try_start_3
    invoke-virtual {p1}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillProvider;->onDatalistPopupDismissed()V

    return-void

    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mDatalistPopup:Lorg/chromium/components/autofill/AutofillPopup;

    iget-object p2, p0, Lorg/chromium/components/autofill/AutofillProvider;->mDatalistSuggestions:[Lorg/chromium/components/autofill/AutofillSuggestion;

    invoke-virtual {p1, p2, p4}, Lorg/chromium/components/autofill/AutofillPopup;->filterAndShow([Lorg/chromium/components/autofill/AutofillSuggestion;Z)V

    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mWebContentsAccessibility:Lorg/chromium/content_public/browser/WebContentsAccessibility;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mDatalistPopup:Lorg/chromium/components/autofill/AutofillPopup;

    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->onAutofillPopupDisplayed(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method private transformToWindowBounds(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/content_public/browser/RenderCoordinates;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/RenderCoordinates;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getContentOffsetYPixInt()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/components/autofill/AutofillProvider;->transformToWindowBoundsWithOffsetY(Landroid/graphics/RectF;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public autofill(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mNativeAutofillProvider:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/chromium/components/autofill/AutofillRequest;->autofill(Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mNativeAutofillProvider:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/components/autofill/AutofillProvider;->autofill(J)V

    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "autofill values:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillUMA:Lorg/chromium/components/autofill/AutofillProviderUMA;

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillProviderUMA;->onAutofill()V

    :cond_1
    return-void
.end method

.method public cancelSession()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mPrefillRequest:Lorg/chromium/components/autofill/PrefillRequest;

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    return-void
.end method

.method public checkAutofillServiceIsSPass()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAutofillServiceIsSPass()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillUMA:Lorg/chromium/components/autofill/AutofillProviderUMA;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillProviderUMA;->recordSession()V

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillProvider;->detachFromJavaAutofillProvider()V

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->destroy()V

    return-void
.end method

.method public forceCancelVirtualView()V
    .locals 1

    sget-boolean v0, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillRequest;->getFocusField()Lorg/chromium/components/autofill/AutofillRequest$FocusField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillProvider;->forceNotifyVirtualViewCanceled()V

    :cond_0
    return-void
.end method

.method public hideDatalistPopup()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mDatalistPopup:Lorg/chromium/components/autofill/AutofillPopup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/ui/DropdownPopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mDatalistPopup:Lorg/chromium/components/autofill/AutofillPopup;

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mDatalistSuggestions:[Lorg/chromium/components/autofill/AutofillSuggestion;

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mWebContentsAccessibility:Lorg/chromium/content_public/browser/WebContentsAccessibility;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->onAutofillPopupDismissed()V

    :cond_1
    sget-boolean v0, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillProvider;->forceNotifyVirtualViewCanceled()V

    :cond_2
    return-void
.end method

.method public initializeNativeAutofillProvider(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    invoke-static {}, Lorg/chromium/components/autofill/AutofillProviderJni;->get()Lorg/chromium/components/autofill/AutofillProvider$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/components/autofill/AutofillProvider$Natives;->init(Lorg/chromium/components/autofill/AutofillProvider;Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public maybeShowBottomSheet(I)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mPrefillRequest:Lorg/chromium/components/autofill/PrefillRequest;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/chromium/components/autofill/PrefillRequest;->getForm()Lorg/chromium/components/autofill/FormData;

    move-result-object v0

    iget v0, v0, Lorg/chromium/components/autofill/FormData;->mSessionId:I

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    invoke-virtual {v1}, Lorg/chromium/components/autofill/AutofillRequest;->getForm()Lorg/chromium/components/autofill/FormData;

    move-result-object v1

    iget v1, v1, Lorg/chromium/components/autofill/FormData;->mSessionId:I

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lorg/chromium/components/autofill/AutofillProvider;->showAutofillDialog(Landroid/view/View;I)Z

    move-result p1

    iget-wide v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mNativeAutofillProvider:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/chromium/components/autofill/AutofillProviderJni;->get()Lorg/chromium/components/autofill/AutofillProvider$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mNativeAutofillProvider:J

    iget-boolean p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mStructureProvidedForPrefillRequest:Z

    invoke-interface {v0, v1, v2, p1, p0}, Lorg/chromium/components/autofill/AutofillProvider$Natives;->onShowBottomSheetResult(JZZ)V

    :cond_2
    return p1

    :cond_3
    :goto_0
    return v2
.end method

.method public onContextChanged(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    invoke-virtual {v0, p1}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->onContextChanged(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDidFillAutofillFormData()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillProvider;->forceNotifyFormValues()V

    return-void
.end method

.method public onFocusChanged(ZIFFFF)V
    .locals 8
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/chromium/components/autofill/AutofillProvider;->onFocusChangedImpl(ZIFFFFZ)V

    return-void
.end method

.method public onFormFieldDidChange(IFFFF)V
    .locals 10
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-short v1, p1

    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillRequest;->getFocusField()Lorg/chromium/components/autofill/AutofillRequest$FocusField;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-short v2, v0, Lorg/chromium/components/autofill/AutofillRequest$FocusField;->fieldIndex:S

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    add-float/2addr p4, p2

    add-float/2addr p5, p3

    invoke-direct {v2, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, v2}, Lorg/chromium/components/autofill/AutofillProvider;->transformToWindowBounds(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, v0, Lorg/chromium/components/autofill/AutofillRequest$FocusField;->absBound:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, p3, p1}, Lorg/chromium/components/autofill/AutofillProvider;->notifyVirtualViewExited(Landroid/view/View;I)V

    iget-object p3, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, p3, p1, p2}, Lorg/chromium/components/autofill/AutofillProvider;->notifyVirtualViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    iget-object p3, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    new-instance p4, Lorg/chromium/components/autofill/AutofillRequest$FocusField;

    iget-short p5, v0, Lorg/chromium/components/autofill/AutofillRequest$FocusField;->fieldIndex:S

    invoke-direct {p4, p5, p2}, Lorg/chromium/components/autofill/AutofillRequest$FocusField;-><init>(SLandroid/graphics/Rect;)V

    invoke-virtual {p3, p4}, Lorg/chromium/components/autofill/AutofillRequest;->setFocusField(Lorg/chromium/components/autofill/AutofillRequest$FocusField;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    const/4 v9, 0x1

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v9}, Lorg/chromium/components/autofill/AutofillProvider;->onFocusChangedImpl(ZIFFFFZ)V

    :cond_3
    :goto_1
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/autofill/AutofillProvider;->notifyVirtualValueChanged(IZ)V

    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillUMA:Lorg/chromium/components/autofill/AutofillProviderUMA;

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    invoke-virtual {p0, v1}, Lorg/chromium/components/autofill/AutofillRequest;->getField(S)Lorg/chromium/components/autofill/FormFieldData;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/components/autofill/FormFieldData;->hasPreviouslyAutofilled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lorg/chromium/components/autofill/AutofillProviderUMA;->onUserChangeFieldValue(Z)V

    return-void
.end method

.method public onFormSubmitted(I)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillProvider;->forceNotifyFormValues()V

    sget-boolean v0, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    const-class v0, Landroid/os/Build$VERSION;

    const-string v2, "SEM_PLATFORM_INT"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x15f90

    sub-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOneUIVersion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutofillProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    sget v2, Lorg/chromium/components/autofill/AutofillProvider;->SAMSUNG_PASS_SAVE_POPUP_SUPPORTED_ONE_UI_VERSION:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    invoke-virtual {v0, p1}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->commit(I)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillProvider;->forceNotifyVirtualViewCanceled()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    invoke-virtual {v0, p1}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->commit(I)V

    :goto_1
    iput-object v1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillUMA:Lorg/chromium/components/autofill/AutofillProviderUMA;

    invoke-virtual {p0, p1}, Lorg/chromium/components/autofill/AutofillProviderUMA;->onFormSubmitted(I)V

    return-void
.end method

.method public onProvideAutoFillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 2

    iget-object p2, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/chromium/components/autofill/AutofillProvider;->mPrefillRequest:Lorg/chromium/components/autofill/PrefillRequest;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "VIRTUAL_STRUCTURE_PROVIDER_NAME"

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "VIRTUAL_STRUCTURE_PROVIDER_VERSION"

    const-string v1, "136.0.7103.127"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillRequest;->getAutofillHintsService()Lorg/chromium/components/autofill/AutofillHintsService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillRequest;->getAutofillHintsService()Lorg/chromium/components/autofill/AutofillHintsService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillHintsService;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "AUTOFILL_HINTS_SERVICE"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1
    iget-object p2, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    const/4 v0, -0x1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/chromium/components/autofill/AutofillRequest;->getForm()Lorg/chromium/components/autofill/FormData;

    move-result-object p2

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    invoke-virtual {v1}, Lorg/chromium/components/autofill/AutofillRequest;->getFocusField()Lorg/chromium/components/autofill/AutofillRequest$FocusField;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillRequest;->getFocusField()Lorg/chromium/components/autofill/AutofillRequest$FocusField;

    move-result-object v0

    iget-short v0, v0, Lorg/chromium/components/autofill/AutofillRequest$FocusField;->fieldIndex:S

    :cond_2
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillUMA:Lorg/chromium/components/autofill/AutofillProviderUMA;

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillProviderUMA;->onVirtualStructureProvided()V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lorg/chromium/components/autofill/AutofillProvider;->mPrefillRequest:Lorg/chromium/components/autofill/PrefillRequest;

    invoke-virtual {p2}, Lorg/chromium/components/autofill/PrefillRequest;->getForm()Lorg/chromium/components/autofill/FormData;

    move-result-object p2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mStructureProvidedForPrefillRequest:Z

    :goto_0
    invoke-virtual {p2, p1, v0}, Lorg/chromium/components/autofill/FormData;->fillViewStructure(Landroid/view/ViewStructure;S)V

    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onProvideAutoFillVirtualStructure fields:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onTextFieldDidScroll(IFFFF)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    if-nez p0, :cond_0

    return-void

    :cond_0
    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/chromium/components/autofill/AutofillRequest;->getField(S)Lorg/chromium/components/autofill/FormFieldData;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Landroid/graphics/RectF;

    add-float/2addr p4, p2

    add-float/2addr p5, p3

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Lorg/chromium/components/autofill/FormFieldData;->updateBounds(Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method

.method public queryAutofillSuggestion()V
    .locals 4

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillProvider;->shouldQueryAutofillSuggestion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillRequest;->getFocusField()Lorg/chromium/components/autofill/AutofillRequest$FocusField;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    iget-object v2, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContainerView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    iget-short v3, v0, Lorg/chromium/components/autofill/AutofillRequest$FocusField;->fieldIndex:S

    invoke-virtual {p0, v3}, Lorg/chromium/components/autofill/AutofillRequest;->getFieldVirtualId(S)I

    move-result p0

    iget-object v0, v0, Lorg/chromium/components/autofill/AutofillRequest$FocusField;->absBound:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, p0, v0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->requestAutofill(Landroid/view/View;ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillProvider;->hideDatalistPopup()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mPrefillRequest:Lorg/chromium/components/autofill/PrefillRequest;

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    return-void
.end method

.method public sendPrefillRequest(Lorg/chromium/components/autofill/FormData;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillRequest;->getFocusField()Lorg/chromium/components/autofill/AutofillRequest$FocusField;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/components/autofill/AutofillProvider;->transformFormFieldToContainViewCoordinates(Lorg/chromium/components/autofill/FormData;)V

    new-instance v0, Lorg/chromium/components/autofill/PrefillRequest;

    invoke-direct {v0, p1}, Lorg/chromium/components/autofill/PrefillRequest;-><init>(Lorg/chromium/components/autofill/FormData;)V

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mPrefillRequest:Lorg/chromium/components/autofill/PrefillRequest;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mStructureProvidedForPrefillRequest:Z

    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/PrefillRequest;->getPrefillHints()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->notifyVirtualViewsReady(Landroid/view/View;Landroid/util/SparseArray;)V

    return-void
.end method

.method public setNativeAutofillProvider(J)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mNativeAutofillProvider:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    :cond_1
    iput-wide p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mNativeAutofillProvider:J

    return-void
.end method

.method public setWebContents(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillUMA:Lorg/chromium/components/autofill/AutofillProviderUMA;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillProviderUMA;->recordSession()V

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    :cond_1
    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillProvider;->detachFromJavaAutofillProvider()V

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/chromium/components/autofill/AutofillProvider;->initializeNativeAutofillProvider(Lorg/chromium/content_public/browser/WebContents;)V

    :cond_2
    return-void
.end method

.method public shouldQueryAutofillSuggestion()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillRequest;->getFocusField()Lorg/chromium/components/autofill/AutofillRequest$FocusField;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isAutofillInputUiShowing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showDatalistPopup([Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillRequest;->getFocusField()Lorg/chromium/components/autofill/AutofillRequest$FocusField;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    iget-short v0, v0, Lorg/chromium/components/autofill/AutofillRequest$FocusField;->fieldIndex:S

    invoke-virtual {v1, v0}, Lorg/chromium/components/autofill/AutofillRequest;->getField(S)Lorg/chromium/components/autofill/FormFieldData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/autofill/FormFieldData;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/chromium/components/autofill/AutofillProvider;->showDatalistPopup([Ljava/lang/String;[Ljava/lang/String;Landroid/graphics/RectF;Z)V

    :cond_1
    return-void
.end method

.method public startAutofillSession(Lorg/chromium/components/autofill/FormData;IFFFFZ)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    add-float/2addr p5, p3

    add-float/2addr p6, p4

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, v0}, Lorg/chromium/components/autofill/AutofillProvider;->transformToWindowBounds(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p3

    iget-object p4, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillProvider;->notifyViewExitBeforeDestroyRequest()V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/components/autofill/AutofillProvider;->transformFormFieldToContainViewCoordinates(Lorg/chromium/components/autofill/FormData;)V

    iget-object p4, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillUMA:Lorg/chromium/components/autofill/AutofillProviderUMA;

    iget-object p5, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    invoke-virtual {p5}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isDisabled()Z

    move-result p5

    invoke-virtual {p4, p5}, Lorg/chromium/components/autofill/AutofillProviderUMA;->onSessionStarted(Z)V

    new-instance p4, Lorg/chromium/components/autofill/AutofillRequest;

    new-instance p5, Lorg/chromium/components/autofill/AutofillRequest$FocusField;

    int-to-short p6, p2

    invoke-direct {p5, p6, p3}, Lorg/chromium/components/autofill/AutofillRequest$FocusField;-><init>(SLandroid/graphics/Rect;)V

    invoke-direct {p4, p1, p5, p7}, Lorg/chromium/components/autofill/AutofillRequest;-><init>(Lorg/chromium/components/autofill/FormData;Lorg/chromium/components/autofill/AutofillRequest$FocusField;Z)V

    iput-object p4, p0, Lorg/chromium/components/autofill/AutofillProvider;->mRequest:Lorg/chromium/components/autofill/AutofillRequest;

    invoke-virtual {p0, p2}, Lorg/chromium/components/autofill/AutofillProvider;->maybeShowBottomSheet(I)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p2, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillUMA:Lorg/chromium/components/autofill/AutofillProviderUMA;

    invoke-virtual {p2}, Lorg/chromium/components/autofill/AutofillProviderUMA;->onBottomSheetShown()V

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, p4, p2, p3}, Lorg/chromium/components/autofill/AutofillProvider;->notifyVirtualViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    :goto_0
    if-eqz p7, :cond_2

    iget-object p2, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillUMA:Lorg/chromium/components/autofill/AutofillProviderUMA;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/chromium/components/autofill/AutofillProviderUMA;->onServerTypeAvailable(Lorg/chromium/components/autofill/FormData;Z)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillTriggeredTimeMillis:J

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mAutofillManager:Lorg/chromium/components/autofill/AutofillManagerWrapper;

    invoke-virtual {p0, p7}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->notifyNewSessionStarted(Z)V

    return-void
.end method

.method public transformFormFieldToContainViewCoordinates(Lorg/chromium/components/autofill/FormData;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/display/DisplayAndroid;->getDipScale()F

    move-result v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v1, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p0, p1, Lorg/chromium/components/autofill/FormData;->mFields:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/components/autofill/FormFieldData;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p1}, Lorg/chromium/components/autofill/FormFieldData;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {p1, v0}, Lorg/chromium/components/autofill/FormFieldData;->setBoundsInContainerViewCoordinates(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public transformToWindowBoundsWithOffsetY(Landroid/graphics/RectF;I)Landroid/graphics/Rect;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/display/DisplayAndroid;->getDipScale()F

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x1

    aget v2, v0, p0

    add-int/2addr v2, p2

    aput v2, v0, p0

    const/4 p0, 0x0

    aget p0, v0, p0

    int-to-float p0, p0

    int-to-float p2, v2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance p0, Landroid/graphics/Rect;

    iget p1, v1, Landroid/graphics/RectF;->left:F

    float-to-int p1, p1

    iget p2, v1, Landroid/graphics/RectF;->top:F

    float-to-int p2, p2

    iget v0, v1, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method
