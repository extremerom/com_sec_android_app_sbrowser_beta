.class public abstract Luc/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhc/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhc/c;

    const-string v1, "kotlin.coroutines.experimental.Continuation"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Luc/F;->a:Lhc/c;

    return-void
.end method
