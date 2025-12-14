.class public final LH/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:LH/j;


# direct methods
.method public constructor <init>(LH/j;IIIIILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH/i;->g:LH/j;

    iput p2, p0, LH/i;->a:I

    iput p3, p0, LH/i;->b:I

    iput p4, p0, LH/i;->c:I

    iput p5, p0, LH/i;->d:I

    iput p6, p0, LH/i;->e:I

    iput-object p7, p0, LH/i;->f:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, LH/i;->g:LH/j;

    iget-object v1, v0, LH/j;->b:LH/c;

    iget v6, p0, LH/i;->e:I

    iget-object v7, p0, LH/i;->f:Landroid/os/Bundle;

    iget v2, p0, LH/i;->a:I

    iget v3, p0, LH/i;->b:I

    iget v4, p0, LH/i;->c:I

    iget v5, p0, LH/i;->d:I

    invoke-virtual/range {v1 .. v7}, LH/c;->onActivityLayout(IIIIILandroid/os/Bundle;)V

    return-void
.end method
