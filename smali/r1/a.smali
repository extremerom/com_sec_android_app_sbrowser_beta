.class public final Lr1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:LN/A;

.field public final b:Ljava/util/ArrayList;

.field public final c:LG5/J2;

.field public d:LZ3/x;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lr1/a;->f:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LN/A;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iput-object v0, p0, Lr1/a;->a:LN/A;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr1/a;->b:Ljava/util/ArrayList;

    new-instance v0, LG5/J2;

    invoke-direct {v0, p0}, LG5/J2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lr1/a;->c:LG5/J2;

    iput-boolean v1, p0, Lr1/a;->e:Z

    return-void
.end method
