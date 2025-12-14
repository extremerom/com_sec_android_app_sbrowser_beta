.class public final Lm/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/b;


# instance fields
.field public final synthetic a:Lm/n;


# direct methods
.method public constructor <init>(Lm/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/m;->a:Lm/n;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/activity/p;)V
    .locals 1

    iget-object p0, p0, Lm/m;->a:Lm/n;

    invoke-virtual {p0}, Lm/n;->getDelegate()Lm/p;

    move-result-object p1

    invoke-virtual {p1}, Lm/p;->a()V

    invoke-virtual {p0}, Landroidx/activity/p;->getSavedStateRegistry()LQ2/d;

    move-result-object p0

    const-string v0, "androidx:appcompat"

    invoke-virtual {p0, v0}, LQ2/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p1}, Lm/p;->f()V

    return-void
.end method
