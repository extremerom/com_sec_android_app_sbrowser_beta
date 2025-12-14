.class public abstract Ll3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm3/e;


# direct methods
.method public constructor <init>(Lm3/e;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/d;->a:Lm3/e;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Lo3/q;)Z
.end method

.method public abstract c(Ljava/lang/Object;)Z
.end method
