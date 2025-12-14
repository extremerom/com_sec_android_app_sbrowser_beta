.class public final Lf1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf1/e;


# direct methods
.method public constructor <init>(Lf1/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/f;->a:Lf1/e;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf1/f;->a:Lf1/e;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
