.class public final Lw1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw1/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lw1/c;->a:Lw1/c;

    return-void
.end method
