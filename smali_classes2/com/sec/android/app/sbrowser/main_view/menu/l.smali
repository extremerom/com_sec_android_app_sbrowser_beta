.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/menu/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;Landroid/content/Context;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/l;->a:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/l;->b:Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/l;->c:Landroid/content/Context;

    iput p4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/l;->d:F

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/l;->b:Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/l;->a:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/l;->c:Landroid/content/Context;

    iget v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/l;->d:F

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->b(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;Landroid/content/Context;FLandroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
