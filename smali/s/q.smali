.class public final Ls/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Ls/r;


# direct methods
.method public constructor <init>(Ls/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/q;->a:Ls/r;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 0

    iget-object p0, p0, Ls/q;->a:Ls/r;

    invoke-virtual {p0}, Ls/r;->c()V

    return-void
.end method
