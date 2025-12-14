.class public final Lt/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Lt/x0;


# direct methods
.method public constructor <init>(Lt/x0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/u0;->a:Lt/x0;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object p0, p0, Lt/u0;->a:Lt/x0;

    iget-object v0, p0, Lt/x0;->mOnDismissListener:Lt/v0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lt/v0;->a(Lt/x0;)V

    :cond_0
    return-void
.end method
