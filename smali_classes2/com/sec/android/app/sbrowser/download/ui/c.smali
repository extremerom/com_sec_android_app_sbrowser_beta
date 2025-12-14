.class public final synthetic Lcom/sec/android/app/sbrowser/download/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/c;->a:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/c;->a:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->e(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
