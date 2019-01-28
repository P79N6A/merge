.class public Lc8/icf;
.super Ljava/lang/Object;
.source "AndroidRuntime.java"


# static fields
.field private static final PREF_ENABLED:Ljava/lang/String; = "enabled"

.field private static final PREF_EXCLUDE_DEXES:Ljava/lang/String; = "excludeDexes"

.field private static final PREF_EXCLUDE_VERSIONS:Ljava/lang/String; = "excludeVersions"

.field private static final PREF_GROUP_SETTINGS:Ljava/lang/String; = "runtime"

.field private static final TAG:Ljava/lang/String; = "RuntimeUtils"

.field private static volatile mInstance:Lc8/icf;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mExcludeDexes:Ljava/lang/String;

.field private mExcludeVersions:Ljava/lang/String;

.field private mMonitor:Lc8/ucf;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getInstance()Lc8/icf;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lc8/icf;->mInstance:Lc8/icf;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Lc8/icf;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lc8/icf;->mInstance:Lc8/icf;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lc8/icf;

    invoke-direct {v0}, Lc8/icf;-><init>()V

    sput-object v0, Lc8/icf;->mInstance:Lc8/icf;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Lc8/icf;->mInstance:Lc8/icf;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private trace(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "typeID"    # Ljava/lang/String;
    .param p2, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 309
    iget-object v1, p0, Lc8/icf;->mMonitor:Lc8/ucf;

    if-eqz v1, :cond_0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "typeID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "detail":Ljava/lang/String;
    iget-object v2, p0, Lc8/icf;->mMonitor:Lc8/ucf;

    if-nez p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, p1, v0, v1}, Lc8/ucf;->trace(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 314
    .end local v0    # "detail":Ljava/lang/String;
    :cond_0
    return-void

    .line 312
    .restart local v0    # "detail":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public disableJitCompilation()V
    .locals 4

    .prologue
    .line 164
    iget-boolean v1, p0, Lc8/icf;->mEnabled:Z

    if-nez v1, :cond_0

    .line 165
    const-string/jumbo v1, "RuntimeUtils"

    const-string/jumbo v2, "- RuntimeUtils setVerificationEnabled disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return-void

    .line 170
    :cond_0
    sget-boolean v1, Lc8/Acf;->IS_VM_ART:Z

    if-eqz v1, :cond_1

    .line 171
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {}, Lc8/scf;->disableJitCompilation()Ljava/lang/Boolean;

    move-result-object v0

    .line 174
    .local v0, "success":Ljava/lang/Boolean;
    const-string/jumbo v1, "RuntimeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "- RuntimeUtils disableJitCompilation: success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string/jumbo v1, "disableJitCompilation"

    invoke-direct {p0, v1, v0}, Lc8/icf;->trace(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/icf;->init(Landroid/content/Context;Z)V

    .line 60
    return-void
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hookedJavaVM"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lc8/icf;->mContext:Landroid/content/Context;

    .line 64
    const-string/jumbo v3, "runtime"

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lc8/icf;->mPreferences:Landroid/content/SharedPreferences;

    .line 66
    iget-object v3, p0, Lc8/icf;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "enabled"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lc8/icf;->mEnabled:Z

    .line 67
    iget-boolean v3, p0, Lc8/icf;->mEnabled:Z

    if-nez v3, :cond_0

    .line 68
    const-string/jumbo v3, "RuntimeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- RuntimeUtils init: mEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lc8/icf;->mEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-object v3, p0, Lc8/icf;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "excludeVersions"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/icf;->mExcludeVersions:Ljava/lang/String;

    .line 73
    iget-object v3, p0, Lc8/icf;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "excludeDexes"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/icf;->mExcludeDexes:Ljava/lang/String;

    .line 74
    iget-object v3, p0, Lc8/icf;->mExcludeDexes:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, p0, Lc8/icf;->mExcludeDexes:Ljava/lang/String;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_0
    iput-boolean v1, p0, Lc8/icf;->mEnabled:Z

    .line 76
    iget-boolean v1, p0, Lc8/icf;->mEnabled:Z

    if-nez v1, :cond_1

    .line 77
    const-string/jumbo v1, "RuntimeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "- RuntimeUtils init: mEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lc8/icf;->mEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", excludeVersions="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/icf;->mExcludeDexes:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v1, v3, :cond_2

    const-string/jumbo v1, "OPPO"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    const-string/jumbo v1, "RuntimeUtils"

    const-string/jumbo v3, "- AndroidRuntime init: Build.VERSION.SDK_INT=23, BRAND=OPPO, is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-boolean v2, p0, Lc8/icf;->mEnabled:Z

    .line 88
    :cond_2
    const-string/jumbo v1, "RuntimeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "- RuntimeUtils init: mEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lc8/icf;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-boolean v1, Lc8/Acf;->IS_VM_ART:Z

    if-eqz v1, :cond_4

    .line 92
    invoke-static {p1, p2}, Lc8/QZe;->init(Landroid/content/Context;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 97
    .local v0, "success":Ljava/lang/Boolean;
    :goto_1
    const-string/jumbo v1, "init"

    invoke-direct {p0, v1, v0}, Lc8/icf;->trace(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 98
    const-string/jumbo v1, "RuntimeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "- RuntimeUtils init: success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .end local v0    # "success":Ljava/lang/Boolean;
    :cond_3
    move v1, v2

    .line 75
    goto/16 :goto_0

    .line 94
    :cond_4
    invoke-static {}, Lc8/scf;->init()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .restart local v0    # "success":Ljava/lang/Boolean;
    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lc8/icf;->mEnabled:Z

    return v0
.end method

.method public isOdexValid(Ljava/lang/String;)Z
    .locals 8
    .param p1, "outputPathName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 273
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 275
    sget-boolean v4, Lc8/Acf;->IS_VM_ART:Z

    if-nez v4, :cond_0

    .line 289
    :goto_0
    return v2

    .line 280
    :cond_0
    :try_start_0
    invoke-static {v1}, Lc8/vcf;->fromFile(Ljava/io/File;)Lc8/vcf;

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- odexFile is valid: odexFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "loadDex"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lc8/icf;->trace(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 286
    const-string/jumbo v2, "RuntimeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- odexFile is invalid: odexFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 289
    goto :goto_0
.end method

.method public loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourcePathName"    # Ljava/lang/String;
    .param p3, "outputPathName"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/icf;->loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Ldalvik/system/DexFile;

    move-result-object v0

    return-object v0
.end method

.method public loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Ldalvik/system/DexFile;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourcePathName"    # Ljava/lang/String;
    .param p3, "outputPathName"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "interpretOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lc8/icf;->mEnabled:Z

    if-nez v11, :cond_0

    .line 197
    const-string/jumbo v11, "RuntimeUtils"

    const-string/jumbo v12, "- RuntimeUtils loadDex disabled."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static/range {p2 .. p4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v3

    .line 258
    :goto_0
    return-object v3

    .line 201
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/icf;->mExcludeVersions:Ljava/lang/String;

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/icf;->mExcludeVersions:Ljava/lang/String;

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 202
    const-string/jumbo v11, "RuntimeUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "- RuntimeUtils loadDex disabled: sourcePathName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", mExcludeVersions="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/icf;->mExcludeVersions:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static/range {p2 .. p4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v3

    goto :goto_0

    .line 212
    :cond_1
    sget-boolean v11, Lc8/Acf;->IS_VM_ART:Z

    if-eqz v11, :cond_5

    .line 213
    const/4 v11, 0x0

    invoke-static {v11}, Lc8/QZe;->setIsDex2oatEnabled(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 214
    .local v10, "success":Ljava/lang/Boolean;
    const-string/jumbo v11, "setIsDex2oatEnabled"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lc8/icf;->trace(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 215
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "- RuntimeUtils setIsDex2oatEnabled: enabled=false, success="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    invoke-static {}, Lc8/QZe;->isDex2oatEnabled()Ljava/lang/Boolean;

    move-result-object v2

    .line 219
    .local v2, "dex2oatEnabled":Ljava/lang/Boolean;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "- RuntimeUtils loadDex: dex2oatEnabled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", IsVerificationEnabled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 221
    invoke-static {}, Lc8/QZe;->IsVerificationEnabled()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", sourcePathName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", outputPathName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v5, "file":Ljava/io/File;
    if-eqz p5, :cond_4

    .line 226
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 243
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 244
    .local v8, "start":J
    invoke-static/range {p2 .. p4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v3

    .line 245
    .local v3, "dexFile":Ldalvik/system/DexFile;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v6, v12, v8

    .line 246
    .local v6, "elapsed":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "- loadDe && x: dexFile="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", odexFile="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", elapsed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    if-nez p5, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_3

    .line 251
    invoke-static/range {p1 .. p3}, Lcom/taobao/android/runtime/Dex2OatService;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_3
    const/4 v11, 0x1

    invoke-static {v11}, Lc8/QZe;->setIsDex2oatEnabled(Z)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 228
    .end local v3    # "dexFile":Ldalvik/system/DexFile;
    .end local v6    # "elapsed":J
    .end local v8    # "start":J
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_2

    .line 230
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 231
    .restart local v8    # "start":J
    invoke-static {v5}, Lc8/vcf;->fromFile(Ljava/io/File;)Lc8/vcf;

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v6, v12, v8

    .line 233
    .restart local v6    # "elapsed":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "- odexFile is valid: dexFile="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", odexFile="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", odexFile length="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 234
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", elapsed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 235
    .end local v6    # "elapsed":J
    .end local v8    # "start":J
    :catch_0
    move-exception v4

    .line 236
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 237
    const-string/jumbo v11, "loadDex"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lc8/icf;->trace(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 238
    const-string/jumbo v11, "RuntimeUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "- odexFile is invalid: dexFile="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", odexFile="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 258
    .end local v2    # "dex2oatEnabled":Ljava/lang/Boolean;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v10    # "success":Ljava/lang/Boolean;
    :cond_5
    invoke-static/range {p2 .. p4}, Lc8/scf;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .locals 1
    .param p1, "sourcePathName"    # Ljava/lang/String;
    .param p2, "outputPathName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lc8/icf;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2, p3}, Lc8/icf;->loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    return-object v0
.end method

.method public loadDex(Ljava/lang/String;Ljava/lang/String;IZ)Ldalvik/system/DexFile;
    .locals 6
    .param p1, "sourcePathName"    # Ljava/lang/String;
    .param p2, "outputPathName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "interpretOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v1, p0, Lc8/icf;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/icf;->loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Ldalvik/system/DexFile;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 263
    const-string/jumbo v0, "RuntimeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "- RuntimeUtils setEnabled: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iput-boolean p1, p0, Lc8/icf;->mEnabled:Z

    .line 265
    iget-object v0, p0, Lc8/icf;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    return-void
.end method

.method public setExcludeDexes(Ljava/lang/String;)V
    .locals 2
    .param p1, "excludeDexes"    # Ljava/lang/String;

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "- RuntimeUtils setExcludeDexes: excludeDexes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    iput-object p1, p0, Lc8/icf;->mExcludeDexes:Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lc8/icf;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "excludeDexes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 302
    return-void
.end method

.method public setExcludeVersions(Ljava/lang/String;)V
    .locals 2
    .param p1, "excludeVersions"    # Ljava/lang/String;

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "- RuntimeUtils setExcludeVersions: excludeVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    iput-object p1, p0, Lc8/icf;->mExcludeVersions:Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lc8/icf;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "excludeVersions"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    return-void
.end method

.method public setMonitor(Lc8/ucf;)V
    .locals 0
    .param p1, "monitor"    # Lc8/ucf;

    .prologue
    .line 305
    iput-object p1, p0, Lc8/icf;->mMonitor:Lc8/ucf;

    .line 306
    return-void
.end method

.method public setVerificationEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 102
    iget-boolean v1, p0, Lc8/icf;->mEnabled:Z

    if-nez v1, :cond_0

    .line 103
    const-string/jumbo v1, "RuntimeUtils"

    const-string/jumbo v2, "- RuntimeUtils setVerificationEnabled disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 108
    :cond_0
    sget-boolean v1, Lc8/Acf;->IS_VM_ART:Z

    if-eqz v1, :cond_1

    .line 114
    invoke-static {p1}, Lc8/QZe;->setVerificationEnabled(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 159
    .local v0, "success":Ljava/lang/Boolean;
    :goto_1
    const-string/jumbo v1, "RuntimeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "- RuntimeUtils setVerificationEnabled: enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string/jumbo v1, "setVerificationEnabled"

    invoke-direct {p0, v1, v0}, Lc8/icf;->trace(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 155
    .end local v0    # "success":Ljava/lang/Boolean;
    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x3

    :goto_2
    invoke-static {v1}, Lc8/scf;->setClassVerifyMode(I)Ljava/lang/Boolean;

    move-result-object v0

    .restart local v0    # "success":Ljava/lang/Boolean;
    goto :goto_1

    .end local v0    # "success":Ljava/lang/Boolean;
    :cond_2
    const/4 v1, 0x1

    goto :goto_2
.end method
