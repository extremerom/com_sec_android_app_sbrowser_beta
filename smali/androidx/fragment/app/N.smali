.class public abstract Landroidx/fragment/app/N;
.super Landroidx/fragment/app/L;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/J;

.field public final b:Landroidx/fragment/app/J;

.field public final c:Landroid/os/Handler;

.field public final d:Landroidx/fragment/app/g0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/J;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/N;->a:Landroidx/fragment/app/J;

    iput-object p1, p0, Landroidx/fragment/app/N;->b:Landroidx/fragment/app/J;

    iput-object v0, p0, Landroidx/fragment/app/N;->c:Landroid/os/Handler;

    new-instance p1, Landroidx/fragment/app/g0;

    invoke-direct {p1}, Landroidx/fragment/app/f0;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/N;->d:Landroidx/fragment/app/g0;

    return-void
.end method
