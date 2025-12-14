.class Lorg/chromium/content/browser/input/SelectPopupDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/SelectPopupDialog;-><init>(Landroid/content/Context;Lorg/chromium/base/Callback;Ljava/util/List;Z[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/input/SelectPopupDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDialog$4;->this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog$4;->this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/SelectPopupDialog;->b(Lorg/chromium/content/browser/input/SelectPopupDialog;[I)V

    return-void
.end method
