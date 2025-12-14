.class public Lcom/sec/android/app/sbrowser/extensions/trans/TransLanguageMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SOURCE_LANGUAGE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/trans/TransLanguageMap$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLanguageMap$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/extensions/trans/TransLanguageMap;->SOURCE_LANGUAGE_MAP:Ljava/util/HashMap;

    return-void
.end method
