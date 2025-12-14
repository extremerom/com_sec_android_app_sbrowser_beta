.class public Lorg/chromium/content/browser/JoystickHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/ImeEventObserver;
.implements Lorg/chromium/base/UserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/JoystickHandler$UserDataFactoryLazyHolder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mEventForwarder:Lorg/chromium/ui/base/EventForwarder;

.field private mScrollEnabled:Z


# direct methods
.method private constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/JoystickHandler;->mScrollEnabled:Z

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/JoystickHandler;->mEventForwarder:Lorg/chromium/ui/base/EventForwarder;

    invoke-static {p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->addEventObserver(Lorg/chromium/content_public/browser/ImeEventObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/content_public/browser/WebContents;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/JoystickHandler;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/JoystickHandler;
    .locals 2

    const-class v0, Lorg/chromium/content/browser/JoystickHandler;

    invoke-static {}, Lorg/chromium/content/browser/JoystickHandler$UserDataFactoryLazyHolder;->a()Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/chromium/content_public/browser/WebContents;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/JoystickHandler;

    return-object p0
.end method

.method private static getVelocityFromJoystickAxis(Landroid/view/MotionEvent;I)F
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    neg-float p0, p0

    return p0
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-boolean v0, p0, Lorg/chromium/content/browser/JoystickHandler;->mScrollEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lorg/chromium/content/browser/JoystickHandler;->getVelocityFromJoystickAxis(Landroid/view/MotionEvent;I)F

    move-result v5

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/chromium/content/browser/JoystickHandler;->getVelocityFromJoystickAxis(Landroid/view/MotionEvent;I)F

    move-result v6

    const/4 v2, 0x0

    cmpl-float v3, v5, v2

    if-nez v3, :cond_1

    cmpl-float v2, v6, v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lorg/chromium/content/browser/JoystickHandler;->mEventForwarder:Lorg/chromium/ui/base/EventForwarder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lorg/chromium/ui/base/EventForwarder;->startFling(JFFZZ)V

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public onNodeAttributeUpdated(ZZ)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/JoystickHandler;->setScrollEnabled(Z)V

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/JoystickHandler;->mScrollEnabled:Z

    return-void
.end method
