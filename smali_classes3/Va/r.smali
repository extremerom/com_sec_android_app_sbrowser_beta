.class public final LVa/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LVa/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    new-instance v1, LVa/b;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, LVa/b;-><init>(Ljava/util/List;)V

    sput-object v1, LVa/r;->a:LVa/b;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(LVa/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p0, "parent"

    invoke-static {p1, p0}, LG6/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
