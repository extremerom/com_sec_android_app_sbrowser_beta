.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/menu/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/m;->a:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    iput p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/m;->b:F

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/m;->a:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    iget p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/m;->b:F

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->c(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;FLandroid/content/DialogInterface;I)V

    return-void
.end method
