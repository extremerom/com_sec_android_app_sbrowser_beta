.class public Lorg/chromium/ui/widget/UiWidgetFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sFactory:Lorg/chromium/ui/widget/UiWidgetFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/ui/widget/UiWidgetFactory;
    .locals 1

    sget-object v0, Lorg/chromium/ui/widget/UiWidgetFactory;->sFactory:Lorg/chromium/ui/widget/UiWidgetFactory;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/ui/widget/UiWidgetFactory;

    invoke-direct {v0}, Lorg/chromium/ui/widget/UiWidgetFactory;-><init>()V

    sput-object v0, Lorg/chromium/ui/widget/UiWidgetFactory;->sFactory:Lorg/chromium/ui/widget/UiWidgetFactory;

    :cond_0
    sget-object v0, Lorg/chromium/ui/widget/UiWidgetFactory;->sFactory:Lorg/chromium/ui/widget/UiWidgetFactory;

    return-object v0
.end method


# virtual methods
.method public createAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 0

    new-instance p0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public createPopupWindow(Landroid/content/Context;)Landroid/widget/PopupWindow;
    .locals 0

    new-instance p0, Landroid/widget/PopupWindow;

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public createToast(Landroid/content/Context;)Landroid/widget/Toast;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    new-instance p0, Landroid/widget/Toast;

    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
