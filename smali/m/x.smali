.class public final synthetic Lm/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/k;


# instance fields
.field public final synthetic a:Lm/y;


# direct methods
.method public synthetic constructor <init>(Lm/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/x;->a:Lm/y;

    return-void
.end method


# virtual methods
.method public final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lm/x;->a:Lm/y;

    invoke-virtual {p0, p1}, Lm/y;->f(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
