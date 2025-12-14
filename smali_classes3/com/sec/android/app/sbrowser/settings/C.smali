.class public final synthetic Lcom/sec/android/app/sbrowser/settings/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/C;->a:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/C;->a:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->k(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
