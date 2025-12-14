.class public final Lf0/o;
.super Lf0/m;
.source "SourceFile"


# instance fields
.field public final d:LHc/h;


# direct methods
.method public constructor <init>(LHc/h;)V
    .locals 0

    invoke-direct {p0}, Lf0/m;-><init>()V

    iput-object p1, p0, Lf0/o;->d:LHc/h;

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lf0/m;->c:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lf0/m;->c:I

    new-instance v1, Lf0/b;

    iget-object v2, p0, Lf0/m;->a:[Ljava/lang/Object;

    aget-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v2, v0

    iget-object p0, p0, Lf0/o;->d:LHc/h;

    invoke-direct {v1, p0, v3, v0}, Lf0/b;-><init>(LHc/h;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
