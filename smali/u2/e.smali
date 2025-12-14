.class public final Lu2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LB0/r;

.field public static final f:LB0/r;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LB0/r;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LB0/r;-><init>(I)V

    sput-object v0, Lu2/e;->e:LB0/r;

    new-instance v0, LB0/r;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, LB0/r;-><init>(I)V

    sput-object v0, Lu2/e;->f:LB0/r;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu2/e;->a:I

    iput p3, p0, Lu2/e;->b:I

    iput-object p2, p0, Lu2/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lu2/e;->d:Ljava/lang/String;

    return-void
.end method
