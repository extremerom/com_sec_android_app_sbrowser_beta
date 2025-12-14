.class public Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAppInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

.field private final mConfiguration:Lcom/samsung/android/sdk/scs/ai/language/Configuration;

.field private final mTranslator:Lcom/samsung/android/sdk/scs/ai/language/Translator;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->mAppInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/AiServices;->getConfiguration(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->mConfiguration:Lcom/samsung/android/sdk/scs/ai/language/Configuration;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/AiServices;->getTranslator(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/Translator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/language/Translator;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;)Lcom/samsung/android/sdk/scs/ai/language/Configuration;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->mConfiguration:Lcom/samsung/android/sdk/scs/ai/language/Configuration;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;)Lcom/samsung/android/sdk/scs/ai/language/Translator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/language/Translator;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->mAppInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;

    return-object v0
.end method


# virtual methods
.method public getTranslateSupportLanguage(Landroid/content/Context;ZJ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->mConfiguration:Lcom/samsung/android/sdk/scs/ai/language/Configuration;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->getTranslateSupportLanguage()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$3;

    invoke-direct {p2, p0, p3, p4}, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$3;-><init>(Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;J)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method

.method public identifyLanguage(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->CLOUD:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$2;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$2;-><init>(Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;Ljava/lang/String;J)V

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->createAppInfo(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;)V

    return-void
.end method

.method public translate(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/language/Translator;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->mAppInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-virtual {p2, p3, p1, p4, p5}, Lcom/samsung/android/sdk/scs/ai/language/Translator;->translate(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$1;

    invoke-direct {p2, p0, p6, p7}, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;J)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method
