.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/menu/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

.field public final synthetic b:F

.field public final synthetic c:Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;FLcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/n;->a:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    iput p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/n;->b:F

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/n;->c:Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/n;->c:Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/n;->a:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    iget p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/n;->b:F

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->a(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;FLcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;Landroid/content/DialogInterface;)V

    return-void
.end method
