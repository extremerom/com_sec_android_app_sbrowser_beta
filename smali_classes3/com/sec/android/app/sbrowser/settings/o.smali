.class public final synthetic Lcom/sec/android/app/sbrowser/settings/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/o;->a:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/o;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/o;->c:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/o;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/o;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/o;->a:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->n(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;Landroid/widget/TextView;Landroid/widget/Button;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
