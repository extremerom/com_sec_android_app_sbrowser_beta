.class Lorg/chromium/content/browser/Gamepad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/WindowEventObserver;
.implements Lorg/chromium/base/UserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/Gamepad$UserDataFactoryLazyHolder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method private constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/chromium/content/browser/WindowEventObserverManager;->from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->addObserver(Lorg/chromium/content/browser/WindowEventObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/content_public/browser/WebContents;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/Gamepad;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public static from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/Gamepad;
    .locals 2

    const-class v0, Lorg/chromium/content/browser/Gamepad;

    invoke-static {}, Lorg/chromium/content/browser/Gamepad$UserDataFactoryLazyHolder;->a()Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/chromium/content_public/browser/WebContents;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/Gamepad;

    return-object p0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p1}, Lorg/chromium/device/gamepad/GamepadList;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-static {}, Lorg/chromium/device/gamepad/GamepadList;->onDetachedFromWindow()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1}, Lorg/chromium/device/gamepad/GamepadList;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
