.class public final LV/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc0/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc0/d;

    const/16 v1, 0x10

    new-array v1, v1, [LG5/L2;

    invoke-direct {v0, v1}, Lc0/d;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, LV/h;->a:Lc0/d;

    return-void
.end method
