.class public abstract LEc/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, LEc/g;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-boolean p0, p0, LEc/g;->a:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ln7/c;

    const/4 v0, 0x0

    const-string v1, "immutable instance"

    invoke-direct {p0, v1, v0}, Ln7/d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0
.end method
