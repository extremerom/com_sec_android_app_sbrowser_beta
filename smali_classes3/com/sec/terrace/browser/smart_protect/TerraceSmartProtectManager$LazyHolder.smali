.class Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;-><init>(I)V

    sput-object v0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$LazyHolder;->INSTANCE:Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    return-void
.end method

.method public static bridge synthetic a()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$LazyHolder;->INSTANCE:Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    return-object v0
.end method
