.class public Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/autofill/AutofillDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Natives;,
        Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Callback;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mAutofillPopup:Lorg/chromium/components/autofill/AutofillPopup;

.field private mContext:Landroid/content/Context;

.field private final mDensity:F

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mKeyboardDelegate:Lorg/chromium/ui/KeyboardVisibilityDelegate;

.field private mKeyboardlistener:Lorg/chromium/ui/KeyboardVisibilityDelegate$KeyboardVisibilityListener;

.field mLayoutRedrawRequested:Z

.field private mNativeAutofillPopup:J


# direct methods
.method public constructor <init>(Landroid/view/View;JLorg/chromium/ui/base/WindowAndroid;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mNativeAutofillPopup:J

    invoke-virtual {p4}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->notEnoughScreenSpace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/chromium/components/autofill/AutofillPopup;

    invoke-direct {v0, p2, p1, p0, p3}, Lorg/chromium/components/autofill/AutofillPopup;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/chromium/components/autofill/AutofillDelegate;Lorg/chromium/ui/widget/RectProvider;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mAutofillPopup:Lorg/chromium/components/autofill/AutofillPopup;

    iput-object p2, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mContext:Landroid/content/Context;

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mAutofillPopup:Lorg/chromium/components/autofill/AutofillPopup;

    iput-object p3, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mContext:Landroid/content/Context;

    :goto_1
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mLayoutRedrawRequested:Z

    invoke-virtual {p4}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lorg/chromium/ui/KeyboardVisibilityDelegate;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mKeyboardDelegate:Lorg/chromium/ui/KeyboardVisibilityDelegate;

    new-instance p2, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$1;

    invoke-direct {p2, p0}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$1;-><init>(Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;)V

    iput-object p2, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mKeyboardlistener:Lorg/chromium/ui/KeyboardVisibilityDelegate$KeyboardVisibilityListener;

    invoke-virtual {p4}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lorg/chromium/ui/KeyboardVisibilityDelegate;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mKeyboardlistener:Lorg/chromium/ui/KeyboardVisibilityDelegate$KeyboardVisibilityListener;

    invoke-virtual {p2, p3}, Lorg/chromium/ui/KeyboardVisibilityDelegate;->addKeyboardVisibilityListener(Lorg/chromium/ui/KeyboardVisibilityDelegate$KeyboardVisibilityListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mDensity:F

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->lambda$addToAutofillSuggestionArray$0(Ljava/lang/String;Z)V

    return-void
.end method

.method private addToAutofillSuggestionArray([Lorg/chromium/components/autofill/AutofillSuggestion;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZZZZLjava/lang/String;)V
    .locals 9
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    move/from16 v1, p8

    move/from16 v2, p10

    move/from16 v3, p14

    move-object/from16 v4, p15

    if-nez p7, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-static/range {p7 .. p7}, Lcom/sec/terrace/browser/TerraceResourceId;->mapToDrawableId(I)I

    move-result v5

    :goto_0
    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    sget v5, Lcom/sec/terrace/R$drawable;->internet_suggestion:I

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    sget v5, Lcom/sec/terrace/R$drawable;->pass_suggestion:I

    :cond_2
    :goto_1
    invoke-virtual/range {p15 .. p15}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->getInstance()Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_6

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->getInstance()Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;

    move-result-object v1

    iget-object v6, v0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mContext:Landroid/content/Context;

    iget v7, v0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mDensity:F

    invoke-virtual {v1, v6, v4, v7}, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->requestVirtualCardIcon(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->getInstance()Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;

    move-result-object v1

    iget-object v6, v0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mContext:Landroid/content/Context;

    iget v7, v0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mDensity:F

    new-instance v8, Lcom/sec/terrace/browser/autofill/a;

    invoke-direct {v8, p0, v4}, Lcom/sec/terrace/browser/autofill/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v4, v7, v8}, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->requestIcon(Landroid/content/Context;Ljava/lang/String;FLcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Callback;)V

    iget-object v1, v0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_6

    if-eqz v5, :cond_6

    iget-object v1, v0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Ll5/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    iget-object v1, v0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Ll5/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_6
    :goto_2
    new-instance v1, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    invoke-direct {v1}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;-><init>()V

    move-object v4, p3

    invoke-virtual {v1, p3}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->setLabel(Ljava/lang/String;)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    move-result-object v1

    move-object v4, p4

    invoke-virtual {v1, p4}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->setSecondaryLabel(Ljava/lang/String;)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    move-result-object v1

    move-object v4, p6

    invoke-virtual {v1, p6}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->setItemTag(Ljava/lang/String;)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->setIconId(I)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    move-result-object v1

    move/from16 v4, p9

    invoke-virtual {v1, v4}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->setIsIconAtStart(Z)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->setSuggestionType(I)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    move-result-object v1

    move/from16 v4, p11

    invoke-virtual {v1, v4}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->setIsDeletable(Z)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->setIsColoredLabel(Z)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    move-result-object v1

    iget-object v0, v0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    move-result-object v0

    const/16 v1, 0x15

    if-eq v2, v1, :cond_7

    move-object v1, p5

    invoke-virtual {v0, p5}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->setSubLabel(Ljava/lang/String;)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;

    :cond_7
    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->build()Lorg/chromium/components/autofill/AutofillSuggestion;

    move-result-object v0

    aput-object v0, p1, p2

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;)Lorg/chromium/components/autofill/AutofillPopup;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mAutofillPopup:Lorg/chromium/components/autofill/AutofillPopup;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private static create(Landroid/view/View;JLorg/chromium/ui/base/WindowAndroid;)Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;-><init>(Landroid/view/View;JLorg/chromium/ui/base/WindowAndroid;)V

    return-object v0
.end method

.method private static createAutofillSuggestionArray(I)[Lorg/chromium/components/autofill/AutofillSuggestion;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-array p0, p0, [Lorg/chromium/components/autofill/AutofillSuggestion;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mNativeAutofillPopup:J

    return-wide v0
.end method

.method private dismiss()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mNativeAutofillPopup:J

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mKeyboardDelegate:Lorg/chromium/ui/KeyboardVisibilityDelegate;

    iget-object v1, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mKeyboardlistener:Lorg/chromium/ui/KeyboardVisibilityDelegate$KeyboardVisibilityListener;

    invoke-virtual {v0, v1}, Lorg/chromium/ui/KeyboardVisibilityDelegate;->removeKeyboardVisibilityListener(Lorg/chromium/ui/KeyboardVisibilityDelegate$KeyboardVisibilityListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mKeyboardDelegate:Lorg/chromium/ui/KeyboardVisibilityDelegate;

    iput-object v0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mKeyboardlistener:Lorg/chromium/ui/KeyboardVisibilityDelegate$KeyboardVisibilityListener;

    iget-object v1, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mAutofillPopup:Lorg/chromium/components/autofill/AutofillPopup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/ui/DropdownPopupWindow;->dismiss()V

    :cond_0
    iput-object v0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$addToAutofillSuggestionArray$0(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->getInstance()Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private static notEnoughScreenSpace(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->shouldUseRefreshStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static shouldUseRefreshStyle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private show([Lorg/chromium/components/autofill/AutofillSuggestion;Z)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mAutofillPopup:Lorg/chromium/components/autofill/AutofillPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/autofill/AutofillPopup;->filterAndShow([Lorg/chromium/components/autofill/AutofillSuggestion;Z)V

    :cond_0
    return-void
.end method

.method private wasSuppressed()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mAutofillPopup:Lorg/chromium/components/autofill/AutofillPopup;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public accessibilityFocusCleared()V
    .locals 0

    return-void
.end method

.method public deleteSuggestion(I)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mNativeAutofillPopup:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridgeJni;->get()Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mNativeAutofillPopup:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Natives;->deletionRequested(JLcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;I)V

    return-void
.end method

.method public dismissed()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mNativeAutofillPopup:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridgeJni;->get()Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mNativeAutofillPopup:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Natives;->popupDismissed(JLcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;)V

    return-void
.end method

.method public suggestionSelected(I)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mNativeAutofillPopup:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridgeJni;->get()Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mNativeAutofillPopup:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Natives;->suggestionSelected(JLcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;I)V

    return-void
.end method
