.class public final LV/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LG5/g4;

.field public final b:LG5/g4;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LG5/g4;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LG5/g4;-><init>(I)V

    iput-object v0, p0, LV/E;->a:LG5/g4;

    iput-object v0, p0, LV/E;->b:LG5/g4;

    return-void
.end method
