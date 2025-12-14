.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lsb/o;


# direct methods
.method public synthetic constructor <init>(Lsb/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/k;->a:Lsb/o;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/k;->a:Lsb/o;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->n(Lsb/o;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
