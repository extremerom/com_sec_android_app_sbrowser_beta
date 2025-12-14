.class public final Landroidx/fragment/app/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/k0;


# instance fields
.field public final a:Landroidx/lifecycle/D;

.field public final b:Landroidx/fragment/app/k0;

.field public final c:Landroidx/lifecycle/H;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/D;Landroidx/fragment/app/k0;Landroidx/lifecycle/H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/b0;->a:Landroidx/lifecycle/D;

    iput-object p2, p0, Landroidx/fragment/app/b0;->b:Landroidx/fragment/app/k0;

    iput-object p3, p0, Landroidx/fragment/app/b0;->c:Landroidx/lifecycle/H;

    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/b0;->b:Landroidx/fragment/app/k0;

    invoke-interface {p0, p1}, Landroidx/fragment/app/k0;->b(Landroid/os/Bundle;)V

    return-void
.end method
