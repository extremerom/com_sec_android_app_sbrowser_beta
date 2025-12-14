.class public final synthetic Landroidx/fragment/app/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/b;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/J;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/J;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/H;->a:Landroidx/fragment/app/J;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/activity/p;)V
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/H;->a:Landroidx/fragment/app/J;

    iget-object p0, p0, Landroidx/fragment/app/J;->mFragments:Landroidx/fragment/app/M;

    iget-object p0, p0, Landroidx/fragment/app/M;->a:Landroidx/fragment/app/I;

    const/4 p1, 0x0

    iget-object v0, p0, Landroidx/fragment/app/N;->d:Landroidx/fragment/app/g0;

    invoke-virtual {v0, p0, p0, p1}, Landroidx/fragment/app/f0;->b(Landroidx/fragment/app/N;Landroidx/fragment/app/L;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
