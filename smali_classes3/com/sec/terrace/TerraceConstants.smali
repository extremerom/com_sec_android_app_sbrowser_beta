.class public Lcom/sec/terrace/TerraceConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final WEB_UI_URLS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/TerraceConstants$1;

    invoke-direct {v0}, Lcom/sec/terrace/TerraceConstants$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/TerraceConstants;->WEB_UI_URLS:Ljava/util/HashMap;

    return-void
.end method
