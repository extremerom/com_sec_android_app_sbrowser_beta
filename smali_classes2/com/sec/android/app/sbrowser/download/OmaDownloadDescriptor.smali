.class public Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDDVersion:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mHolderForStartAndLength:[I

.field private mIconURI:Ljava/lang/String;

.field private mInfoURL:Ljava/lang/String;

.field private mInstallNotifyURI:Ljava/lang/String;

.field private mInstallParam:Ljava/lang/String;

.field public mKeyName:Ljava/lang/String;

.field public mKeyValue:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNameSpace:Ljava/lang/String;

.field private mNextURL:Ljava/lang/String;

.field private mObjectURI:Ljava/lang/String;

.field private mRootElement:Ljava/lang/String;

.field private mSize:J

.field private mStatus:I

.field private mType:Ljava/lang/String;

.field private mType1:Ljava/lang/String;

.field private mType2:Ljava/lang/String;

.field private mVendor:Ljava/lang/String;

.field mXpp:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mObjectURI:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mType1:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mType2:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mInstallNotifyURI:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mDDVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mVendor:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mNextURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mInfoURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mIconURI:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mInstallParam:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mRootElement:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mNameSpace:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mHolderForStartAndLength:[I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mStatus:I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyValue:Ljava/lang/String;

    return-void
.end method

.method private processStartElement()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mRootElement:Ljava/lang/String;

    if-nez v2, :cond_0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mRootElement:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mNameSpace:Ljava/lang/String;

    :cond_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyName:Ljava/lang/String;

    return-void
.end method

.method private processText()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mHolderForStartAndLength:[I

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mHolderForStartAndLength:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v2

    :goto_0
    add-int v5, v2, v1

    if-ge v4, v5, :cond_5

    aget-char v5, v0, v4

    const/16 v6, 0x9

    if-eq v5, v6, :cond_4

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    const/16 v6, 0xd

    if-eq v5, v6, :cond_2

    const/16 v6, 0x22

    if-eq v5, v6, :cond_1

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v5, "\\\\"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v5, "\\\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v5, "\\r"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v5, "\\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v5, "\\t"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyValue:Ljava/lang/String;

    :cond_6
    return-void
.end method


# virtual methods
.method public getContentName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getDDVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mDDVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mObjectURI:Ljava/lang/String;

    return-object p0
.end method

.method public getRootElement()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mRootElement:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mSize:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mStatus:I

    return p0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mVendor:Ljava/lang/String;

    return-object p0
.end method

.method public parseDD(Ljava/lang/String;)V
    .locals 3

    const-string v0, "org.xmlpull.v1.XmlPullParserFactory"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecDescriptionInfo : parseDD: parser implementation class is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OmaDownloadDescriptor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->processDocument()V

    return-void
.end method

.method public processDocument()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    :cond_0
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->processStartElement()V

    move v3, v1

    goto :goto_1

    :cond_1
    const/4 v5, 0x4

    if-ne v0, v5, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->processText()V

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->updateDDinfo()V

    if-nez v4, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mRootElement:Ljava/lang/String;

    const-string v3, "media"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mNameSpace:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mRootElement:Ljava/lang/String;

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_2
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mStatus:I

    return-void
.end method

.method public updateDDinfo()V
    .locals 2

    const-string v0, "objectURI"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mObjectURI:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    const-string v0, "type"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mType:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mType1:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mType1:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mType2:Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mType2:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const-string v0, "size"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mSize:J

    goto/16 :goto_0

    :cond_4
    const-string v0, "installNotifyURI"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mInstallNotifyURI:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string v0, "name"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "DDVersion"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mDDVersion:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v0, "vendor"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mVendor:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v0, "description"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mDescription:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string v0, "nextURL"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mNextURL:Ljava/lang/String;

    goto :goto_0

    :cond_a
    const-string v0, "infoURL"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mInfoURL:Ljava/lang/String;

    goto :goto_0

    :cond_b
    const-string v0, "iconURI"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mIconURI:Ljava/lang/String;

    goto :goto_0

    :cond_c
    const-string v0, "installParam"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mKeyValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadDescriptor;->mInstallParam:Ljava/lang/String;

    :cond_d
    :goto_0
    return-void
.end method
