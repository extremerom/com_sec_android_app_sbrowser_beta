.class public final Lg4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:LS3/A;


# instance fields
.field public final a:LN/f;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v6, LS3/A;

    new-instance v0, LS3/m;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    new-instance v12, Le4/c;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Le4/c;-><init>(I)V

    const-class v9, Ljava/lang/Object;

    const-class v10, Ljava/lang/Object;

    const-class v8, Ljava/lang/Object;

    const/4 v13, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, LS3/m;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Le4/a;LZ3/x;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-class v2, Ljava/lang/Object;

    const-class v3, Ljava/lang/Object;

    const-class v1, Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LS3/A;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;LZ3/x;)V

    sput-object v6, Lg4/b;->c:LS3/A;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LN/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iput-object v0, p0, Lg4/b;->a:LN/f;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lg4/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method
