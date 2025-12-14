.class public final synthetic Lorg/chromium/content/browser/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/WebContents$UserDataFactory;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lorg/chromium/content_public/browser/WebContents;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lorg/chromium/content/browser/h;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/chromium/content/browser/WindowEventObserverManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/WindowEventObserverManager;-><init>(Lorg/chromium/content_public/browser/WebContents;I)V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/chromium/content/browser/ViewEventSinkImpl;

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ViewEventSinkImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/chromium/content/browser/PopupController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/PopupController;-><init>(Lorg/chromium/content_public/browser/WebContents;I)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/chromium/content/browser/JoystickHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/JoystickHandler;-><init>(Lorg/chromium/content_public/browser/WebContents;I)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/chromium/content/browser/JavascriptInjectorImpl;

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/JavascriptInjectorImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/GestureListenerManagerImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/chromium/content/browser/ContentUiEventHandler;

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentUiEventHandler;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/chromium/content/browser/Gamepad;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/Gamepad;-><init>(Lorg/chromium/content_public/browser/WebContents;I)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
