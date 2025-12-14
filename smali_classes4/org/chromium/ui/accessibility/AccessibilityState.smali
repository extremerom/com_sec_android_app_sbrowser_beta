.class public Lorg/chromium/ui/accessibility/AccessibilityState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/accessibility/AccessibilityState$State;,
        Lorg/chromium/ui/accessibility/AccessibilityState$Listener;,
        Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;,
        Lorg/chromium/ui/accessibility/AccessibilityState$Natives;,
        Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final AUTOFILL_COMPAT_ACCESSIBILITY_SERVICE_ID:Ljava/lang/String; = "android/com.android.server.autofill.AutofillCompatAccessibilityService"

.field public static final EVENT_TYPE_MASK_ALL:I = -0x1

.field public static final EVENT_TYPE_MASK_NONE:I = 0x0

.field protected static final PASSWORD_MANAGER_CAPABILITY_TYPE_MASK:I = 0x1

.field protected static final PASSWORD_MANAGER_EVENT_TYPE_MASK:I = 0x839

.field protected static final PASSWORD_MANAGER_FLAG_TYPE_MASK:I = 0x5f

.field public static final TALKBACK_SERVICE_ID:Ljava/lang/String; = "com.google.android.marvin.talkback/.TalkBackService"

.field private static sAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private static sAccessibilityServicesObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

.field private static final sActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

.field private static sAnimationDurationScaleObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

.field private static final sApplicationStateListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

.field private static sCapabilitiesMask:I

.field private static sCapabilitiesMaskHeuristic:I

.field private static sContrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end field

.field private static sDisplayInversionEnabled:Z

.field private static sDisplayInversionEnabledObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

.field private static sEnabledServiceStringForTesting:Ljava/lang/String;

.field private static sEventTypeMask:I

.field private static sEventTypeMaskHeuristic:I

.field private static sExtraStateInitialized:Z

.field private static sFeedbackTypeMask:I

.field private static sFeedbackTypeMaskHeuristic:I

.field private static sFlagsMask:I

.field private static sFlagsMaskHeuristic:I

.field private static sFontWeightAdjustment:I

.field private static sHasRegisteredObservers:Z

.field private static sHighContrastEnabled:Z

.field private static sInitialized:Z

.field private static sIsInTestingMode:Z

.field private static final sListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/chromium/ui/accessibility/AccessibilityState$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static sNextDelayMillis:I

.field private static sPollCount:I

.field private static sPreInitCachedValuePerformGesturesEnabled:Ljava/lang/Boolean;

.field private static sServiceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sServiceInfoListForTesting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sState:Lorg/chromium/ui/accessibility/AccessibilityState$State;

.field private static sTextContrastObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/ui/accessibility/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    new-instance v0, Lorg/chromium/ui/accessibility/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sApplicationStateListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sListeners:Ljava/util/Set;

    const/16 v0, 0xfa

    sput v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sNextDelayMillis:I

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->lambda$registerObservers$0()V

    return-void
.end method

.method public static addCanonicalizedComponentNameToArray(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static addListener(Lorg/chromium/ui/accessibility/AccessibilityState$Listener;)V
    .locals 1

    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static areOnlyPasswordManagerMasksRequested()Z
    .locals 4

    sget v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sEventTypeMaskHeuristic:I

    if-eqz v0, :cond_0

    sget v1, Lorg/chromium/ui/accessibility/AccessibilityState;->sFlagsMaskHeuristic:I

    if-eqz v1, :cond_0

    sget v2, Lorg/chromium/ui/accessibility/AccessibilityState;->sCapabilitiesMaskHeuristic:I

    if-eqz v2, :cond_0

    const/16 v3, 0x839

    or-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    const/16 v0, 0x5f

    or-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    or-int/lit8 v1, v2, 0x1

    if-ne v1, v0, :cond_0

    sget v1, Lorg/chromium/ui/accessibility/AccessibilityState;->sFeedbackTypeMaskHeuristic:I

    const/16 v2, 0x10

    or-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->processExtraStateChange()V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->processServicesChange()V

    return-void
.end method

.method public static calculateHeuristicState(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 2

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android/com.android.server.autofill.AutofillCompatAccessibilityService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sEventTypeMaskHeuristic:I

    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    or-int/2addr v0, v1

    sput v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sEventTypeMaskHeuristic:I

    sget v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sFeedbackTypeMaskHeuristic:I

    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    or-int/2addr v0, v1

    sput v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sFeedbackTypeMaskHeuristic:I

    sget v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sFlagsMaskHeuristic:I

    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/2addr v0, v1

    sput v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sFlagsMaskHeuristic:I

    sget v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sCapabilitiesMaskHeuristic:I

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result p0

    or-int/2addr p0, v0

    sput p0, Lorg/chromium/ui/accessibility/AccessibilityState;->sCapabilitiesMaskHeuristic:I

    :cond_0
    return-void
.end method

.method public static synthetic d(Landroid/app/Activity;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/ui/accessibility/AccessibilityState;->onActivityStateChange(Landroid/app/Activity;I)V

    return-void
.end method

.method public static synthetic e(I)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/ui/accessibility/AccessibilityState;->onApplicationStateChange(I)V

    return-void
.end method

.method public static synthetic f(F)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/ui/accessibility/AccessibilityState;->lambda$registerObservers$1(F)V

    return-void
.end method

.method private static fetchAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;
    .locals 2

    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    sput-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_0
    return-object v0
.end method

.method private static getAccessibilityServiceCapabilitiesMask()I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->updateAccessibilityServices()V

    :cond_0
    sget v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sCapabilitiesMask:I

    return v0
.end method

.method private static getAccessibilityServiceEventTypeMask()I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->updateAccessibilityServices()V

    :cond_0
    sget v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sEventTypeMask:I

    return v0
.end method

.method private static getAccessibilityServiceFeedbackTypeMask()I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->updateAccessibilityServices()V

    :cond_0
    sget v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sFeedbackTypeMask:I

    return v0
.end method

.method private static getAccessibilityServiceFlagsMask()I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->updateAccessibilityServices()V

    :cond_0
    sget v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sFlagsMask:I

    return v0
.end method

.method private static getAccessibilityServiceIds()[Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->updateAccessibilityServices()V

    :cond_0
    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sServiceIds:Ljava/util/List;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getCanonicalizedEnabledServiceNames(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-static {v0, v3}, Lorg/chromium/ui/accessibility/AccessibilityState;->addCanonicalizedComponentNameToArray(Ljava/util/List;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getEnabledServiceString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sIsInTestingMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sEnabledServiceStringForTesting:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/chromium/ui/accessibility/AccessibilityState;->sEnabledServiceStringForTesting:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enabled_accessibility_services"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRunningServiceInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sIsInTestingMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sServiceInfoListForTesting:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sServiceInfoListForTesting:Ljava/util/List;

    return-object v0

    :cond_0
    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->fetchAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getTalkBackEnabledState()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->updateAccessibilityServices()V

    :cond_0
    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sServiceIds:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sServiceIds:Ljava/util/List;

    const-string v1, "com.google.android.marvin.talkback/.TalkBackService"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lorg/chromium/ui/accessibility/AccessibilityState;->sServiceIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    new-instance v4, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    :cond_4
    :goto_1
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isAccessibilityEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->isPerformGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isAnyAccessibilityServiceEnabled()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->fetchAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sState:Lorg/chromium/ui/accessibility/AccessibilityState$State;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/accessibility/AccessibilityState$State;

    iget-boolean v0, v0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isAnyAccessibilityServiceEnabled:Z

    return v0
.end method

.method public static isDisplayInversionEnabled()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sExtraStateInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->updateExtraState()V

    :cond_0
    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sDisplayInversionEnabled:Z

    return v0
.end method

.method public static isHighContrastEnabled()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sExtraStateInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->updateExtraState()V

    :cond_0
    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sHighContrastEnabled:Z

    return v0
.end method

.method public static isOnlyPasswordManagersEnabled()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->updateAccessibilityServices()V

    :cond_0
    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sState:Lorg/chromium/ui/accessibility/AccessibilityState$State;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/accessibility/AccessibilityState$State;

    iget-boolean v0, v0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isOnlyPasswordManagersEnabled:Z

    return v0
.end method

.method public static isPerformGesturesEnabled()Z
    .locals 2

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    if-nez v0, :cond_3

    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sPreInitCachedValuePerformGesturesEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->fetchAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->fetchAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sPreInitCachedValuePerformGesturesEnabled:Ljava/lang/Boolean;

    const/4 v0, 0x1

    return v0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sPreInitCachedValuePerformGesturesEnabled:Ljava/lang/Boolean;

    const/4 v0, 0x0

    return v0

    :cond_3
    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sState:Lorg/chromium/ui/accessibility/AccessibilityState$State;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/accessibility/AccessibilityState$State;

    iget-boolean v0, v0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isPerformGesturesEnabled:Z

    return v0
.end method

.method public static isScreenReaderEnabled()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->updateAccessibilityServices()V

    :cond_0
    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sState:Lorg/chromium/ui/accessibility/AccessibilityState$State;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/accessibility/AccessibilityState$State;

    iget-boolean v0, v0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isScreenReaderEnabled:Z

    return v0
.end method

.method public static isScreenReaderRunning()Z
    .locals 1

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->getTalkBackEnabledState()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isTextShowPasswordEnabled()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->updateAccessibilityServices()V

    :cond_0
    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sState:Lorg/chromium/ui/accessibility/AccessibilityState$State;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/accessibility/AccessibilityState$State;

    iget-boolean v0, v0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isTextShowPasswordEnabled:Z

    return v0
.end method

.method public static isTouchExplorationEnabled()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->fetchAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sState:Lorg/chromium/ui/accessibility/AccessibilityState$State;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/accessibility/AccessibilityState$State;

    iget-boolean v0, v0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isTouchExplorationEnabled:Z

    return v0
.end method

.method private static synthetic lambda$registerObservers$0()V
    .locals 1

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityStateJni;->get()Lorg/chromium/ui/accessibility/AccessibilityState$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/ui/accessibility/AccessibilityState$Natives;->onAnimatorDurationScaleChanged()V

    return-void
.end method

.method private static synthetic lambda$registerObservers$1(F)V
    .locals 0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->processExtraStateChange()V

    return-void
.end method

.method private static onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->processServicesChange()V

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->processExtraStateChange()V

    :cond_0
    return-void
.end method

.method private static onApplicationStateChange(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->unregisterObservers()V

    goto :goto_0

    :cond_0
    if-ne p0, v0, :cond_2

    sget-boolean p0, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    if-eqz p0, :cond_1

    sget-boolean p0, Lorg/chromium/ui/accessibility/AccessibilityState;->sHasRegisteredObservers:Z

    if-nez p0, :cond_2

    :cond_1
    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->registerObservers()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static processExtraStateChange()V
    .locals 2

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->updateExtraState()V

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityStateJni;->get()Lorg/chromium/ui/accessibility/AccessibilityState$Natives;

    move-result-object v0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->isDisplayInversionEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/ui/accessibility/AccessibilityState$Natives;->onDisplayInversionEnabledChanged(Z)V

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityStateJni;->get()Lorg/chromium/ui/accessibility/AccessibilityState$Natives;

    move-result-object v0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->isHighContrastEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/ui/accessibility/AccessibilityState$Natives;->onContrastLevelChanged(Z)V

    return-void
.end method

.method private static processServicesChange()V
    .locals 1

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->updateAccessibilityServices()V

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityStateJni;->get()Lorg/chromium/ui/accessibility/AccessibilityState$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/ui/accessibility/AccessibilityState$Natives;->recordAccessibilityServiceInfoHistograms()V

    return-void
.end method

.method public static registerObservers()V
    .locals 6

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, LN4/a;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, LN4/a;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    sput-object v1, Lorg/chromium/ui/accessibility/AccessibilityState;->sAnimationDurationScaleObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    new-instance v1, Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, LN4/a;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, LN4/a;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    sput-object v1, Lorg/chromium/ui/accessibility/AccessibilityState;->sAccessibilityServicesObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    new-instance v1, Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, LN4/a;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, LN4/a;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    sput-object v1, Lorg/chromium/ui/accessibility/AccessibilityState;->sDisplayInversionEnabledObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    new-instance v1, Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, LN4/a;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, LN4/a;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    sput-object v1, Lorg/chromium/ui/accessibility/AccessibilityState;->sTextContrastObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    new-instance v3, Lorg/chromium/ui/accessibility/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lorg/chromium/ui/accessibility/AccessibilityState;->sContrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    :cond_0
    const-string v3, "animator_duration_scale"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lorg/chromium/ui/accessibility/AccessibilityState;->sAnimationDurationScaleObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v3, "enabled_accessibility_services"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lorg/chromium/ui/accessibility/AccessibilityState;->sAccessibilityServicesObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v3, "touch_exploration_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lorg/chromium/ui/accessibility/AccessibilityState;->sAccessibilityServicesObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v3, "speak_password"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lorg/chromium/ui/accessibility/AccessibilityState;->sAccessibilityServicesObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v3, "show_password"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lorg/chromium/ui/accessibility/AccessibilityState;->sAccessibilityServicesObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v3, "accessibility_display_inversion_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lorg/chromium/ui/accessibility/AccessibilityState;->sDisplayInversionEnabledObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v3, "high_text_contrast_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lorg/chromium/ui/accessibility/AccessibilityState;->sTextContrastObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    if-lt v1, v2, :cond_1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    if-eqz v1, :cond_1

    sget-object v2, Lorg/chromium/ui/accessibility/AccessibilityState;->sContrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sget-object v2, Lorg/chromium/ui/accessibility/AccessibilityState;->sContrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    invoke-static {v1, v0, v2}, Lorg/chromium/content/browser/input/b;->v(Landroid/app/UiModeManager;Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$ContrastChangeListener;)V

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sHasRegisteredObservers:Z

    return-void
.end method

.method public static relevantEventTypesForCurrentServices()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->updateAccessibilityServices()V

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget v1, Lorg/chromium/ui/accessibility/AccessibilityState;->sEventTypeMask:I

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    not-int v2, v2

    and-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static unregisterObservers()V
    .locals 4

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/chromium/ui/accessibility/AccessibilityState;->sAccessibilityServicesObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v2, Lorg/chromium/ui/accessibility/AccessibilityState;->sAnimationDurationScaleObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v2, Lorg/chromium/ui/accessibility/AccessibilityState;->sDisplayInversionEnabledObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v2, Lorg/chromium/ui/accessibility/AccessibilityState;->sTextContrastObserver:Lorg/chromium/ui/accessibility/AccessibilityState$ServicesObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/chromium/ui/accessibility/AccessibilityState;->sContrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/b;->u(Landroid/app/UiModeManager;Landroid/app/UiModeManager$ContrastChangeListener;)V

    :cond_0
    sput-object v3, Lorg/chromium/ui/accessibility/AccessibilityState;->sContrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    :cond_1
    sput-object v3, Lorg/chromium/ui/accessibility/AccessibilityState;->sState:Lorg/chromium/ui/accessibility/AccessibilityState$State;

    sput-object v3, Lorg/chromium/ui/accessibility/AccessibilityState;->sPreInitCachedValuePerformGesturesEnabled:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    sput-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sHasRegisteredObservers:Z

    sput-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sExtraStateInitialized:Z

    sput-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sDisplayInversionEnabled:Z

    sput-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sHighContrastEnabled:Z

    sput-object v3, Lorg/chromium/ui/accessibility/AccessibilityState;->sAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public static updateAccessibilityServices()V
    .locals 18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-boolean v4, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    if-nez v4, :cond_0

    new-instance v4, Lorg/chromium/ui/accessibility/AccessibilityState$State;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v13}, Lorg/chromium/ui/accessibility/AccessibilityState$State;-><init>(ZZZZZZZZ)V

    sput-object v4, Lorg/chromium/ui/accessibility/AccessibilityState;->sState:Lorg/chromium/ui/accessibility/AccessibilityState$State;

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->fetchAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lorg/chromium/ui/accessibility/AccessibilityState;->sInitialized:Z

    const/4 v5, 0x0

    sput v5, Lorg/chromium/ui/accessibility/AccessibilityState;->sEventTypeMask:I

    sput v5, Lorg/chromium/ui/accessibility/AccessibilityState;->sFeedbackTypeMask:I

    sput v5, Lorg/chromium/ui/accessibility/AccessibilityState;->sFlagsMask:I

    sput v5, Lorg/chromium/ui/accessibility/AccessibilityState;->sCapabilitiesMask:I

    sput v5, Lorg/chromium/ui/accessibility/AccessibilityState;->sEventTypeMaskHeuristic:I

    sput v5, Lorg/chromium/ui/accessibility/AccessibilityState;->sFeedbackTypeMaskHeuristic:I

    sput v5, Lorg/chromium/ui/accessibility/AccessibilityState;->sFlagsMaskHeuristic:I

    sput v5, Lorg/chromium/ui/accessibility/AccessibilityState;->sCapabilitiesMaskHeuristic:I

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->getRunningServiceInfoList()Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lorg/chromium/ui/accessibility/AccessibilityState;->sServiceIds:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v12, v5

    move v13, v12

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0x1f

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v9, :cond_3

    invoke-static {v8}, Lj9/a;->y(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    move v9, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v9, v4

    :goto_2
    or-int/2addr v13, v9

    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/chromium/ui/accessibility/AccessibilityState;->sServiceIds:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v9}, Lorg/chromium/ui/accessibility/AccessibilityState;->addCanonicalizedComponentNameToArray(Ljava/util/List;Ljava/lang/String;)V

    sget v9, Lorg/chromium/ui/accessibility/AccessibilityState;->sEventTypeMask:I

    iget v10, v8, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    or-int/2addr v9, v10

    sput v9, Lorg/chromium/ui/accessibility/AccessibilityState;->sEventTypeMask:I

    sget v9, Lorg/chromium/ui/accessibility/AccessibilityState;->sFeedbackTypeMask:I

    iget v10, v8, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    or-int/2addr v9, v10

    sput v9, Lorg/chromium/ui/accessibility/AccessibilityState;->sFeedbackTypeMask:I

    sget v9, Lorg/chromium/ui/accessibility/AccessibilityState;->sFlagsMask:I

    iget v10, v8, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/2addr v9, v10

    sput v9, Lorg/chromium/ui/accessibility/AccessibilityState;->sFlagsMask:I

    sget v9, Lorg/chromium/ui/accessibility/AccessibilityState;->sCapabilitiesMask:I

    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v10

    or-int/2addr v9, v10

    sput v9, Lorg/chromium/ui/accessibility/AccessibilityState;->sCapabilitiesMask:I

    invoke-static {v8}, Lorg/chromium/ui/accessibility/AccessibilityState;->calculateHeuristicState(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    move v12, v4

    goto :goto_0

    :cond_4
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v9, :cond_5

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-static {v8}, LB4/b;->a(Landroid/content/res/Configuration;)I

    move-result v8

    sput v8, Lorg/chromium/ui/accessibility/AccessibilityState;->sFontWeightAdjustment:I

    goto :goto_3

    :cond_5
    sput v5, Lorg/chromium/ui/accessibility/AccessibilityState;->sFontWeightAdjustment:I

    :goto_3
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "show_password"

    invoke-static {v8, v10, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v4, :cond_6

    move v15, v4

    goto :goto_4

    :cond_6
    move v15, v5

    :goto_4
    invoke-static {v6}, Lorg/chromium/ui/accessibility/AccessibilityState;->getEnabledServiceString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/chromium/ui/accessibility/AccessibilityState;->getCanonicalizedEnabledServiceNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const-string v2, "android/com.android.server.autofill.AutofillCompatAccessibilityService"

    if-eqz v14, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-wide/16 v2, 0x3e8

    goto :goto_5

    :cond_8
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v11, 0xfa

    const-string v14, "A11yState"

    if-nez v3, :cond_b

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "Enabled accessibility services: "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Running accessibility services: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Lorg/chromium/ui/accessibility/AccessibilityState;->sNextDelayMillis:I

    const/16 v8, 0x1388

    if-ge v3, v8, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Will check again after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/chromium/ui/accessibility/AccessibilityState;->sNextDelayMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accessibility.Android.UpdateAccessibilityServices.DidPoll"

    invoke-static {v0, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LN4/a;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, LN4/a;-><init>(I)V

    sget v2, Lorg/chromium/ui/accessibility/AccessibilityState;->sNextDelayMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sPollCount:I

    add-int/2addr v0, v4

    sput v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sPollCount:I

    sget v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sNextDelayMillis:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sNextDelayMillis:I

    return-void

    :cond_a
    const-string v3, "Max delay reached. Send information as is."

    invoke-static {v14, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Accessibility.Android.UpdateAccessibilityServices.PollTimeout"

    invoke-static {v3, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    sput v11, Lorg/chromium/ui/accessibility/AccessibilityState;->sNextDelayMillis:I

    goto :goto_7

    :cond_b
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "Enabled accessibility services list updated. "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput v11, Lorg/chromium/ui/accessibility/AccessibilityState;->sNextDelayMillis:I

    :goto_7
    sget v3, Lorg/chromium/ui/accessibility/AccessibilityState;->sEventTypeMaskHeuristic:I

    and-int/lit16 v3, v3, 0x5004

    if-eqz v3, :cond_c

    move v3, v4

    goto :goto_8

    :cond_c
    move v3, v5

    :goto_8
    :try_start_0
    const-class v8, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillManager;

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v6}, Landroid/view/autofill/AutofillManager;->hasEnabledAutofillServices()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v4, :cond_e

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_e

    :cond_d
    move v2, v4

    goto :goto_9

    :catch_0
    const-string v2, "AutofillManager did not resolve before timelimit."

    invoke-static {v14, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    move v2, v5

    :goto_9
    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->areOnlyPasswordManagerMasksRequested()Z

    move-result v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_11

    if-nez v13, :cond_10

    if-nez v6, :cond_f

    if-eqz v2, :cond_10

    :cond_f
    :goto_a
    move v2, v4

    goto :goto_b

    :cond_10
    move v2, v5

    goto :goto_b

    :cond_11
    if-nez v6, :cond_f

    if-eqz v2, :cond_10

    goto :goto_a

    :goto_b
    sget v6, Lorg/chromium/ui/accessibility/AccessibilityState;->sFeedbackTypeMask:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_12

    move v6, v4

    goto :goto_c

    :cond_12
    move v6, v5

    :goto_c
    sget v7, Lorg/chromium/ui/accessibility/AccessibilityState;->sCapabilitiesMask:I

    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_13

    sget v8, Lorg/chromium/ui/accessibility/AccessibilityState;->sFlagsMask:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_13

    move v10, v4

    goto :goto_d

    :cond_13
    move v10, v5

    :goto_d
    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_14

    move v11, v4

    goto :goto_e

    :cond_14
    move v11, v5

    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    const-wide/16 v16, 0x3e8

    div-long v7, v7, v16

    sub-long/2addr v7, v0

    long-to-int v0, v7

    const/16 v1, 0x64

    const-string v7, "Accessibility.Android.UpdateAccessibilityServices.Runtime"

    const/16 v8, 0x3e80

    invoke-static {v7, v0, v4, v8, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordLinearCountHistogram(Ljava/lang/String;IIII)V

    sget v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sPollCount:I

    const/16 v1, 0xb

    const-string v7, "Accessibility.Android.UpdateAccessibilityServices.PollCount"

    const/16 v8, 0xa

    invoke-static {v7, v0, v4, v8, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordLinearCountHistogram(Ljava/lang/String;IIII)V

    sput v5, Lorg/chromium/ui/accessibility/AccessibilityState;->sPollCount:I

    const-string v0, "Informing listeners of changes."

    invoke-static {v14, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/chromium/ui/accessibility/AccessibilityState$State;

    move-object v8, v0

    move v9, v3

    move v14, v6

    move/from16 v16, v2

    invoke-direct/range {v8 .. v16}, Lorg/chromium/ui/accessibility/AccessibilityState$State;-><init>(ZZZZZZZZ)V

    invoke-static {v0}, Lorg/chromium/ui/accessibility/AccessibilityState;->updateAndNotifyStateChange(Lorg/chromium/ui/accessibility/AccessibilityState$State;)V

    return-void
.end method

.method private static updateAndNotifyStateChange(Lorg/chromium/ui/accessibility/AccessibilityState$State;)V
    .locals 3

    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sState:Lorg/chromium/ui/accessibility/AccessibilityState$State;

    sput-object p0, Lorg/chromium/ui/accessibility/AccessibilityState;->sState:Lorg/chromium/ui/accessibility/AccessibilityState$State;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New AccessibilityState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/chromium/ui/accessibility/AccessibilityState;->sState:Lorg/chromium/ui/accessibility/AccessibilityState$State;

    invoke-virtual {v2}, Lorg/chromium/ui/accessibility/AccessibilityState$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11yState"

    invoke-static {v2, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lorg/chromium/ui/accessibility/AccessibilityState;->sListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/ui/accessibility/AccessibilityState$Listener;

    invoke-interface {v2, v0, p0}, Lorg/chromium/ui/accessibility/AccessibilityState$Listener;->onAccessibilityStateChanged(Lorg/chromium/ui/accessibility/AccessibilityState$State;Lorg/chromium/ui/accessibility/AccessibilityState$State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static updateExtraState()V
    .locals 6

    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sExtraStateInitialized:Z

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_inversion_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    sput-boolean v2, Lorg/chromium/ui/accessibility/AccessibilityState;->sDisplayInversionEnabled:Z

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "high_text_contrast_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x22

    if-lt v3, v5, :cond_1

    const-string v3, "uimode"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    invoke-static {v1}, Lorg/chromium/content/browser/input/b;->a(Landroid/app/UiModeManager;)F

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eq v2, v0, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v4

    :cond_3
    :goto_2
    sput-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityState;->sHighContrastEnabled:Z

    return-void
.end method
