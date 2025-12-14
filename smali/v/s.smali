.class public final Lv/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lv/s;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv/s;

    invoke-direct {v0}, Lv/s;-><init>()V

    sput-object v0, Lv/s;->c:Lv/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lv/s;->a:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lv/s;->b:Ljava/util/Map;

    return-void
.end method
