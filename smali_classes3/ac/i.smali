.class public final Lac/i;
.super Lac/l;
.source "SourceFile"


# instance fields
.field public final i:Lac/l;


# direct methods
.method public constructor <init>(Lac/l;)V
    .locals 1

    const-string v0, "elementType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lac/i;->i:Lac/l;

    return-void
.end method
