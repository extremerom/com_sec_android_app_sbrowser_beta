.class public final LQ7/j;
.super Ljava/lang/ref/PhantomReference;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:LQ7/i;


# direct methods
.method public synthetic constructor <init>(LQ7/a;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V
    .locals 1

    sget-object v0, LQ7/i;->a:LQ7/i;

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, LQ7/j;->a:Ljava/util/Set;

    iput-object v0, p0, LQ7/j;->b:LQ7/i;

    return-void
.end method
