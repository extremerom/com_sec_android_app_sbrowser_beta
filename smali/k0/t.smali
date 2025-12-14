.class public abstract Lk0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lk0/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v0

    invoke-virtual {v0}, Lk0/h;->d()I

    move-result v0

    iput v0, p0, Lk0/t;->a:I

    return-void
.end method


# virtual methods
.method public abstract a(Lk0/t;)V
.end method

.method public abstract b()Lk0/t;
.end method
