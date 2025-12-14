.class public final Lec/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lec/i;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lec/i;

    sget-object v1, Lfb/v;->a:Lfb/v;

    invoke-direct {v0, v1}, Lec/i;-><init>(Ljava/util/List;)V

    sput-object v0, Lec/i;->b:Lec/i;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lec/i;->a:Ljava/util/List;

    return-void
.end method
