.class public final Lh3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Lh3/c;

.field public final b:LX4/i;

.field public final c:Lf3/w;

.field public final d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayedWorkTracker"

    invoke-static {v0}, Lf3/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh3/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lh3/c;LX4/i;Lf3/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/a;->a:Lh3/c;

    iput-object p2, p0, Lh3/a;->b:LX4/i;

    iput-object p3, p0, Lh3/a;->c:Lf3/w;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lh3/a;->d:Ljava/util/HashMap;

    return-void
.end method
