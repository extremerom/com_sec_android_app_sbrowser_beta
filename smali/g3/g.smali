.class public final synthetic Lg3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/b;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lf3/c;

.field public final synthetic d:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/List;Lf3/c;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg3/g;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lg3/g;->b:Ljava/util/List;

    iput-object p3, p0, Lg3/g;->c:Lf3/c;

    iput-object p4, p0, Lg3/g;->d:Landroidx/work/impl/WorkDatabase;

    return-void
.end method


# virtual methods
.method public final c(Lo3/j;Z)V
    .locals 6

    new-instance p2, LH6/a;

    iget-object v4, p0, Lg3/g;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v1, p0, Lg3/g;->b:Ljava/util/List;

    iget-object v3, p0, Lg3/g;->c:Lf3/c;

    const/16 v5, 0x9

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, LH6/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Lg3/g;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
