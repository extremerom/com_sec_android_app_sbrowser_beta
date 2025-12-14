.class public interface abstract Lf3/B;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final W:Lf3/A;

.field public static final a0:Lf3/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf3/A;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf3/B;->W:Lf3/A;

    new-instance v0, Lf3/z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf3/B;->a0:Lf3/z;

    return-void
.end method
